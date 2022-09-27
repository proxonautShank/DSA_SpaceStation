##### 🚀 Challenge 10 *(Mid-Easy)*
Call two arms equally strong if the heaviest weights they each are able to lift are equal.

Call two people equally strong if their strongest arms are equally strong (the strongest arm can be both the right and the left), and so are their weakest arms.

Given your and your friend's arms' lifting capabilities find out if you two are equally strong.
###### Example
- For `yourLeft = 10`, `yourRight = 15`, `friendsLeft = 15`, and `friendsRight = 10`, the output should be
`solution(yourLeft, yourRight, friendsLeft, friendsRight) = true`;

- For `yourLeft = 15`, `yourRight = 10`, `friendsLeft = 15`, and `friendsRight = 9`, the output should be
`solution(yourLeft, yourRight, friendsLeft, friendsRight) = false`.

```
func solution(yourLeft: Int, yourRight: Int, friendsLeft: Int, friendsRight: Int) -> Bool {

    if yourLeft == friendsLeft {
        return yourRight == friendsRight
    }else if yourLeft == friendsRight {
        return yourRight == friendsLeft
    }else {
        return false
    }
}
```
---

##### 🚀 Challenge 11 *(Easy)*
Given an array of integers, find the maximal absolute difference between any two of its adjacent elements.

###### Example
- For `inputArray = [2, 4, 1, 0]`, the output should be
`solution(inputArray) = 3`.
- For `inputArray = [1, 6, 7, 10]`, the output should be
`solution(inputArray) = 5`.

```
func solution(inputArray: [Int]) -> Int {
    var diff = 0
    for idx in 0..<inputArray.count-1 {
        let val = abs(inputArray[idx] - inputArray[idx+1])
        diff = diff < val ? val : diff
    }
    return diff
}
```
---
