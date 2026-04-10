public enum SandwichError: Error, Equatable
{
    case outOfCleanDishes
    case missingIngredients([String])
}
