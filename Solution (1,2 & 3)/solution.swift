//
//  shank:anonymous.swift
//  
//
//  Created by Shashank Pali on 11/07/22.
//

import Foundation

//MARK: - Challenge 1

func isPalindrome(string inputString: String) -> Bool {
    // Solution
    let strArr = Array(inputString)
    for idx in 0..<strArr.count/2 {
     if (strArr[idx] != strArr[(strArr.count-1) - idx]) {
         return false
     }
    }
    return true
}

//MARK: - Challenge 2

func getLargestAdjacentProduct(items inputArray: [Int]) -> Int {
    // Solution
    var result = inputArray[0] * inputArray[1]
    for i in 1..<inputArray.count-1 {
        let ref = (inputArray[i] * inputArray[i+1])
        if ref > result {
            result = ref
        }
    }
    return result
}

//MARK: - Challenge 3

func areaOfPolygon(side: Int) -> Int {
    // Solution
    return 1 + 2*side*(side-1)
}
