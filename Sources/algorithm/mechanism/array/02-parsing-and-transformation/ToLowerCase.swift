public enum ToLowerCase
{
    public static func solve(_ text: String) -> String
    {
        var loweredScalars = String.UnicodeScalarView()

        for scalar in text.unicodeScalars
        {
            let value = scalar.value

            if value >= 65 && value <= 90
            {
                loweredScalars.append(UnicodeScalar(value + 32)!)
            }
            else
            {
                loweredScalars.append(scalar)
            }
        }

        return String(loweredScalars)
    }
}
