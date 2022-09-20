##### 🚀 Challenge 8 *(Mid-Easy)*
Write a function to sort a given array in ascending order but don't change the indexes of `-1`'s
###### Example
- For `inputArray = [-1, 150, 190, 170, -1, -1, 160, 180]`, the output should be
`solution(inputArray) = [-1, 150, 160, 170, -1, -1, 180, 190]`.

```
func sol(n: [Int]) -> [Int] {
    var ref = n.filter{$0 != -1}.sorted()
    var res: [Int] = []
    
    for ele in n {
        if ele != -1 {
            res += [-1]
        }else {
            res += [ref[0]]
            ref.removeFirst()
        }
    }
    
    return res
}
```
---

##### 🚀 Challenge 9 *(Easy)*
Given a even number of digits. Write a function to find the sum of the first half of the digits is equal to the sum of the second half.

###### Example
- For `n = 1230`, the output should be
`solution(n) = true`;
- For `n = 239017`, the output should be
`solution(n) = false`.

```
func sol(n: String) -> Bool {
    var (first, sec) = (0,0)
    for (i, ele) in n.enumerated() {
        if i < n.count/2 {
            first += Int(String(ele))!
        }else {
            sec += Int(String(ele))!
        }
    }
    
    return first == sec
}
```
---
