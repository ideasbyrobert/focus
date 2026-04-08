TEST_COMMAND := swift test --disable-swift-testing
TEST_LIST_COMMAND := $(TEST_COMMAND) list
TEST_TARGET_FILTER := $(if $(strip $(TARGET)),--filter "^$(TARGET)\\.",)

TEST_CLASS_USAGE := Usage: make test-class CLASS=ControlFlowTests
TEST_CASE_USAGE := Usage: make test-case CLASS=ControlFlowTests TEST=testLoopExamplesMatchTheGuidedTour
TEST_CLASS_REJECTION := TEST is not supported with test-class. Use: make test-case CLASS=ControlFlowTests TEST=testLoopExamplesMatchTheGuidedTour

REQUIRE_TEST_CLASS_CLASS = @test -n "$(CLASS)" || (echo "$(TEST_CLASS_USAGE)" >&2; exit 1)
REQUIRE_TEST_CASE_CLASS = @test -n "$(CLASS)" || (echo "$(TEST_CASE_USAGE)" >&2; exit 1)
REQUIRE_TEST_CASE_TEST = @test -n "$(TEST)" || (echo "$(TEST_CASE_USAGE)" >&2; exit 1)
REJECT_TEST_FOR_TEST_CLASS = @test -z "$(TEST)" || (echo "$(TEST_CLASS_REJECTION)" >&2; exit 1)

LOAD_TEST_LIST = \
	TEST_LIST="$$( $(TEST_LIST_COMMAND) )"; \
	if [ -n "$(TARGET)" ]; then \
		TEST_LIST="$$(printf '%s\n' "$$TEST_LIST" | grep -F "$(TARGET)." || true)"; \
	fi

RESOLVE_CLASS_SPECIFIER = \
	CLASS_SPECIFIER="$$(printf '%s\n' "$$TEST_LIST" | grep -F ".$(CLASS)/" | cut -d'/' -f1 | sort -u)"; \
	MATCH_COUNT="$$(printf '%s\n' "$$CLASS_SPECIFIER" | sed '/^$$/d' | wc -l | tr -d ' ')"; \
	if [ "$$MATCH_COUNT" -eq 0 ]; then \
		echo "No test class matched '$(CLASS)'." >&2; \
		exit 1; \
	fi; \
	if [ "$$MATCH_COUNT" -gt 1 ]; then \
		echo "CLASS '$(CLASS)' is ambiguous. Matching test classes:" >&2; \
		printf '%s\n' "$$CLASS_SPECIFIER" >&2; \
		echo "Rerun with TARGET=<test-target> to disambiguate." >&2; \
		exit 1; \
	fi

RESOLVE_TEST_SPECIFIER = \
	CLASS_TESTS="$$(printf '%s\n' "$$TEST_LIST" | grep -F "$$CLASS_SPECIFIER/")"; \
	TEST_SPECIFIER="$$CLASS_SPECIFIER/$(TEST)"; \
	printf '%s\n' "$$CLASS_TESTS" | grep -Fx "$$TEST_SPECIFIER" >/dev/null || { \
		echo "No test named '$(TEST)' found in '$$CLASS_SPECIFIER'." >&2; \
		echo "Available tests:" >&2; \
		printf '%s\n' "$$CLASS_TESTS" | sed "s|^$$CLASS_SPECIFIER/||" >&2; \
		exit 1; \
	}

.PHONY: test test-class test-case

test:
	$(TEST_COMMAND) $(TEST_TARGET_FILTER)

test-class:
	$(REQUIRE_TEST_CLASS_CLASS)
	$(REJECT_TEST_FOR_TEST_CLASS)
	@$(LOAD_TEST_LIST); \
	$(RESOLVE_CLASS_SPECIFIER); \
	$(TEST_COMMAND) --filter "$$CLASS_SPECIFIER"

test-case:
	$(REQUIRE_TEST_CASE_CLASS)
	$(REQUIRE_TEST_CASE_TEST)
	@$(LOAD_TEST_LIST); \
	$(RESOLVE_CLASS_SPECIFIER); \
	$(RESOLVE_TEST_SPECIFIER); \
	$(TEST_COMMAND) --filter "$$TEST_SPECIFIER"
