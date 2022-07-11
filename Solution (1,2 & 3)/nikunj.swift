import Foundation

/// ##### Challenge 1 *(Easy)*
/// Palindrome
func checkingPalindrom(str: String) -> Bool {
/// Solution 1.
/// O(n)
    var reverseStr = ""
    for char in str {
        reverseStr = "\(char)" + reverseStr
    }
    guard str == reverseStr else {
        return false
    }
    return true


/// Solution 2.
/// O(1)
//    guard str == String(str.reversed()) else {
//        return false
//    }
//    return true
}

print(checkingPalindrom(str: "Nikunj"))

/// ##### Challenge 2 *(Mid-Easy)*
/// Find Largest Product

var inputArray = [3, 6, -2, -5, 7, 3]
var largestProduct = 0
func findLargestProduct(inputArray: [Int]) -> Int {
/// Solution 1.
/// O(n-2)
    for i in 0...inputArray.count-2 {
        let multiply = inputArray[i] * inputArray[i+1]
        largestProduct = largestProduct < multiply ? multiply : largestProduct
    }
    return largestProduct

/// Solution 2.
//    let _ = inputArray.reduce(1) { firstIdx, secondIdx in
//        let multiply = firstIdx * secondIdx
//        largestProduct = largestProduct < multiply ? multiply : largestProduct
//        return secondIdx
//    }
//    return largestProduct
}
print(findLargestProduct(inputArray: inputArray))

/// ##### Challenge 3 *(Moderate)*
/// Area of polygon

func findAreaOfPloygon(n: Int) -> Int {
    let lowerN = n-1
    let length = n+lowerN
    return (length*length) - (n*lowerN*2)
}
print("Solution(n): \(findAreaOfPloygon(n: 5))")
