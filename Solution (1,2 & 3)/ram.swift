import Foundation

/*Challenge 1: Palindrome*/
func isPalindrome(string: String) -> Bool {
    if string.count == 1 {
        return true
    } else if string.count > 1 {
        let halfLengthOfCharacter = string.count/2
        let firstHalf = String(string.prefix(halfLengthOfCharacter))
        let secondHalf = String(string.suffix(halfLengthOfCharacter).reversed())
        return firstHalf == secondHalf
    } else {
        return false
    }
}
let sampleCharacter = "A man, a plan, a cameo, Zena, Bird, Mocha ahcoM ,driB ,aneZ ,oemac a ,nalp a ,nam A"
if isPalindrome(string: sampleCharacter) {
    print("Palindrome")
} else {
    print("Not Palindrome")
}

/*Challenge 2: Largest product of two adjacent input*/
func getLargestAdjacentProduct(items: [Int]) -> Int {
    var result = 0;
    for (index, _) in items.enumerated() {
        if index > 0 {
            result = max(items[index] * items[index - 1], result)
        }
    }
    return result;
}

let sampleInput = [3, 6, -2, -5, 7, 3]
print(getLargestAdjacentProduct(items: sampleInput))

/*Challenge 3: Find area of polygon in given input*/
func areaOfPolygon(side: Int) -> Int {
    side * (2*side - 1) - (side - 1)
}
let sampleInputPolygon = 3
print(areaOfPolygon(side: sampleInputPolygon))
