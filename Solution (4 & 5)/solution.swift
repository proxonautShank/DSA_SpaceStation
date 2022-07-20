//
//  solution.swift
//  


import Foundation

//MARK: - Challenge 4

func add(matrix: [[Int]]) -> Int {
    var res = 0, arr2 = [String]()
    
    for i in 0..<matrix.count {
        for j in 0..<matrix[0].count {
            if matrix[i][j] != 0 {
                if arr2.contains("\(i-1)\(j)") {
                    res += matrix[i][j]
                    arr2 += ["\(i)\(j)"]
                }else if i == 0 {
                    res += matrix[i][j]
                    arr2 += ["\(i)\(j)"]
                }
            }
        }
    }
    return res
}

//MARK: - Challenge 5

func longestStrings(from inputArray: [String]) -> [String] {
    let max = inputArray.map{str in str.count}.max()
    return inputArray.filter{ str in str.count == max }
}

//MARK: - Challenge 6
func arrange(anagram: [String]) -> [String] {
    var ref : [(Int, String)] = []
    for (i, str) in anagram.enumerated() {
        ref += [(i, String(str.sorted()))]
    }
    ref = ref.sorted{$0.1 < $1.1}
    
    var res : [String] = []
    
    for tuple in ref {
        res += [anagram[tuple.0]]
    }
    
    return res
}
