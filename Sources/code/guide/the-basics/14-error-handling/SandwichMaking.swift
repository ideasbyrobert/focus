public func makeASandwich(hasCleanDishes: Bool, missingIngredients: [String]) throws
{
    if !hasCleanDishes
    {
        throw SandwichError.outOfCleanDishes
    }

    if !missingIngredients.isEmpty
    {
        throw SandwichError.missingIngredients(missingIngredients)
    }
}

public func respondToSandwichRequest(hasCleanDishes: Bool, missingIngredients: [String]) -> String
{
    do
    {
        try makeASandwich(hasCleanDishes: hasCleanDishes, missingIngredients: missingIngredients)

        return "Eat sandwich"
    }
    catch SandwichError.outOfCleanDishes
    {
        return "Wash dishes"
    }
    catch SandwichError.missingIngredients(let ingredients)
    {
        return "Buy \(ingredients)"
    }
    catch
    {
        return "Unexpected error"
    }
}
