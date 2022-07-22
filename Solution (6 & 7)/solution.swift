//
//  solution.swift
//  


import Foundation

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

//MARK: - Challenge 7
func longestStrings(inputArray: [String]) -> [String] {
    let max = inputArray.map{str in str.count}.max()
    return inputArray.filter{ str in str.count == max }
}
