import UIKit

/*Challenge 4*/
let matrix = [[1, 1, 1, 0],
              [2, 0, 0, 1],
              [0, 1, 3, 4]]

var ignoreColumn = [Int]()
var countRoomAvailable = [Int]()
var noOfRows = matrix.count - 1

for index in 0...noOfRows {
    let rowCount = matrix[index].count - 1
    for innerIndex in 0...rowCount {
        if matrix[index][innerIndex] == 0 {
            ignoreColumn.append(innerIndex)
        }
        if !ignoreColumn.contains(innerIndex) {
            countRoomAvailable.append(matrix[index][innerIndex])
        }
    }
}
print(countRoomAvailable.reduce(0, +))

/*Challenge 5*/
let sampleInput = ["abc", "eeee", "abcd", "dcd"]
let maxLength = sampleInput.sorted(by: >).first
let longestStrings = sampleInput.filter { $0.count == maxLength?.count }
print(longestStrings)

