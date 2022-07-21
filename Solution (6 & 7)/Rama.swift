import UIKit

/*Challenge 6*/
func arrangePosition(for anagramString: [String]) -> [String] {
    var storingPosition : [(Int, String)] = []
    for (index, item) in anagramString.enumerated() {
        storingPosition += [(index, String(item.sorted()))]
    }
    storingPosition = storingPosition.sorted{$0.1 < $1.1}
    var actualResult : [String] = []
    for item in storingPosition {
        actualResult += [anagramString[item.0]]
    }
    return actualResult
}
let inputAnagramString = ["tea", "hero", "ok", "oreh", "ko", "ate", "erho", "eat"]
print(arrangePosition(for: inputAnagramString))

/*Challenge 7*/
func findCommonCharacter(firstInput: String, secondInput: String) -> [Character] {
    var ignorePosition = [Int]()
    var matchingCharacters = [Character]()
    for firstItem in firstInput {
        for(index, secondItem) in secondInput.enumerated() {
            if (firstItem == secondItem) &&
                !ignorePosition.contains(index) {
                ignorePosition.append(index)
                matchingCharacters.append(firstItem)
            }
        }
    }
    return matchingCharacters
}

let firstInput = "aabcc"
let secondInput = "aadc"
print(findCommonCharacter(firstInput: firstInput, secondInput: secondInput).count)
