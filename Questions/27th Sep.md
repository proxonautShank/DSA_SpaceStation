##### 🚀 Challenge 12 *(Mid-Easy)*
Given an array of integers, replace all the occurrences of `elemToReplace` with `substitutionElem`.
###### Example
- For `inputArray = [1, 2, 1]`, `elemToReplace = 1`, and `substitutionElem = 3`, the output should be
`solution(inputArray, elemToReplace, substitutionElem) = [3, 2, 3]`.

###### Solution
```
func solution(inputArray: [Int], elemToReplace: Int, substitutionElem: Int) -> [Int] {
    return inputArray.map{$0 == elemToReplace ? substitutionElem : elemToReplace}
}
```
---

##### 🚀 Challenge 13 *(Easy)*
An IP address is a numerical label assigned to each device (e.g., computer, printer) participating in a computer network that uses the Internet Protocol for communication. There are two versions of the Internet protocol, and thus two versions of addresses. One of them is the [IPv4 address](keyword://ipv4-address).

Given a string, find out if it satisfies the IPv4 address naming rules.

###### Example
- For `inputString = "172.16.254.1"`, the output should be
`solution(inputString) = true`.
- For `inputString = "172.316.254.1"`, the output should be
`solution(inputString) = false`.

###### Solution
```
func solution(inputString: String) -> Bool {
    let a = inputString.components(separatedBy: ".")
    guard a.count == 4 else {return false}
    return a.map { str in
    if str.count > 1 && str.first! == "0" {
        return 0
    }
    return 0...255 ~= Int(str) ?? -1 ? 1 : 0
}.reduce(0){$0 + $1} == 4
}
```
---
