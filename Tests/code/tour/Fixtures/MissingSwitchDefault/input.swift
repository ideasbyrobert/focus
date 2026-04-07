let vegetable = "red pepper"

switch vegetable
{
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let value where value.hasSuffix("pepper"):
    print("Is it a spicy \(value)?")
}
