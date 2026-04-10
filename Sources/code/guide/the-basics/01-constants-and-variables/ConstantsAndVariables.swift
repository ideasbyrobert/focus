public let maximumNumberOfLoginAttempts = 10
public let initialCurrentLoginAttempt = 0

public let π = 3.14159
public let 你好 = "你好世界"
public let 🐶🐮 = "dogcow"

public func deferredMaximumNumberOfLoginAttempts(environment: String) -> Int
{
    let maximumNumberOfLoginAttempts: Int

    if environment == "development"
    {
        maximumNumberOfLoginAttempts = 100
    }
    else
    {
        maximumNumberOfLoginAttempts = 10
    }

    return maximumNumberOfLoginAttempts
}

public func multipleZeroCoordinates() -> (x: Double, y: Double, z: Double)
{
    var x = 0.0, y = 0.0, z = 0.0

    return (x, y, z)
}

public func updatedFriendlyWelcome() -> String
{
    var friendlyWelcome = "Hello!"
    friendlyWelcome = "Bonjour!"

    return friendlyWelcome
}
