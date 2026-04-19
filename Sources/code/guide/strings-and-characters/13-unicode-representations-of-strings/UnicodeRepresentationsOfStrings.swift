public func dogString() -> String
{
    "Dog‼🐶"
}

public func dogStringUTF8CodeUnits() -> [UInt8]
{
    Array(dogString().utf8)
}

public func dogStringUTF16CodeUnits() -> [UInt16]
{
    Array(dogString().utf16)
}

public func dogStringUnicodeScalarValues() -> [UInt32]
{
    dogString().unicodeScalars.map
    {
        $0.value
    }
}

public func dogStringUnicodeScalars() -> [String]
{
    dogString().unicodeScalars.map
    {
        String($0)
    }
}

public func printDogStringUTF8CodeUnits()
{
    for codeUnit in dogString().utf8
    {
        print("\(codeUnit) ", terminator: "")
    }

    print("")
}

public func printDogStringUTF16CodeUnits()
{
    for codeUnit in dogString().utf16
    {
        print("\(codeUnit) ", terminator: "")
    }

    print("")
}

public func printDogStringUnicodeScalarValues()
{
    for scalar in dogString().unicodeScalars
    {
        print("\(scalar.value) ", terminator: "")
    }

    print("")
}

public func printDogStringUnicodeScalars()
{
    for scalar in dogString().unicodeScalars
    {
        print("\(scalar) ")
    }
}
