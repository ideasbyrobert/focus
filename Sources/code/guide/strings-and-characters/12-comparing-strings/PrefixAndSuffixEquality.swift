private let romeoAndJulietScenes = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell",
]

public func prefixCanonicalEquivalenceMessages() -> [String]
{
    let ecole = "\u{E9}cole"
    var messages: [String] = []

    if ecole.hasPrefix("\u{E9}")
    {
        messages.append("Has U+00E9 prefix, as expected.")
    }
    else
    {
        messages.append("Does not have U+00E9 prefix, which is unexpected.")
    }

    if ecole.hasPrefix("\u{65}\u{301}")
    {
        messages.append("Has U+0065 U+0301 prefix, as expected.")
    }
    else
    {
        messages.append("Does not have U+0065 U+0301 prefix, which is unexpected.")
    }

    return messages
}

public func suffixCanonicalEquivalenceMessages() -> [String]
{
    let cafe = "caf\u{E9}"
    var messages: [String] = []

    if cafe.hasSuffix("\u{E9}")
    {
        messages.append("Has U+00E9 suffix, as expected.")
    }
    else
    {
        messages.append("Does not have U+00E9 suffix, which is unexpected.")
    }

    if cafe.hasSuffix("\u{65}\u{301}")
    {
        messages.append("Has U+0065 U+0301 suffix, as expected.")
    }
    else
    {
        messages.append("Does not have U+0065 U+0301 suffix, which is unexpected.")
    }

    return messages
}

public func actOneSceneCount() -> Int
{
    var act1SceneCount = 0

    for scene in romeoAndJulietScenes
    {
        if scene.hasPrefix("Act 1 ")
        {
            act1SceneCount += 1
        }
    }

    return act1SceneCount
}

public func mansionAndCellSceneCounts() -> (mansion: Int, cell: Int)
{
    var mansionCount = 0
    var cellCount = 0

    for scene in romeoAndJulietScenes
    {
        if scene.hasSuffix("Capulet's mansion")
        {
            mansionCount += 1
        }
        else if scene.hasSuffix("Friar Lawrence's cell")
        {
            cellCount += 1
        }
    }

    return (mansionCount, cellCount)
}
