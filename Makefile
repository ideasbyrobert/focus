TEST_TARGET := CodeTourTests

.PHONY: test test-class test-case

test:
	swift test --disable-swift-testing

test-class:
	@test -n "$(CLASS)" || (echo "Usage: make test-class CLASS=ControlFlowTests" >&2; exit 1)
	@test -z "$(TEST)" || (echo "TEST is not supported with test-class. Use: make test-case CLASS=ControlFlowTests TEST=testLoopExamplesMatchTheGuidedTour" >&2; exit 1)
	swift test --disable-swift-testing --filter "$(TEST_TARGET).$(CLASS)"

test-case:
	@test -n "$(CLASS)" || (echo "Usage: make test-case CLASS=ControlFlowTests TEST=testLoopExamplesMatchTheGuidedTour" >&2; exit 1)
	@test -n "$(TEST)" || (echo "Usage: make test-case CLASS=ControlFlowTests TEST=testLoopExamplesMatchTheGuidedTour" >&2; exit 1)
	swift test --disable-swift-testing --filter "$(TEST_TARGET).$(CLASS)/$(TEST)"
