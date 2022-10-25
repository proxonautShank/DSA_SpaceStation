##### 🚀 Challenge 14 *(Mid-Hard)*
Given a string, your task is to replace each of its characters by the next one in the English alphabet; i.e. replace `a` with `b`, replace `b` with `c`, etc (`z` would be replaced by `a`).

Check if the given string is a correct variable name.
###### Example
- For `inputString = "crazy"`, the output should be `solution(inputString) = "dsbaz"`.
- For `inputString = "big"`, the output should be `solution(inputString) = "cjh"`.

###### Solution
```swift
func sol(input: String) -> String {
    let r = input.map { c in
        var v = UnicodeScalar(String(c))!.value + 1
        v = v == 123 ? 97 : v
        return String(UnicodeScalar(v)!)
    }
    
    return r.joined(separator: "")
}
```
---

##### 🚀 Challenge 15 *(Mid-Easy)*
Given an unsorted integer array, find a pair with the given sum in it.

###### Example
- For `nums = [8, 7, 2, 5, 4, 1]` and `target = 10`, the output should be
`solution(nums) = (8, 2)`.
- For `nums = [8, 7, 2, 5, 3, 1]` and `target = 12`, the output should be
`solution(nums) = (7, 5)`.

###### Solution
```swift
func sol(input: [Int], target: Int) -> (Int, Int) {
    
    for e in input {
        let i = target - e
        if input.contains(i) { return (e, i) }
    }

    return (0,0)
}
```
---
