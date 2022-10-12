##### 🚀 Challenge 14 *(Mid-Easy)*
Correct variable names consist only of English letters, digits and underscores and they can't start with a digit.

Check if the given string is a correct variable name.
###### Example
- For `name = "var_1__Int"`, the output should be
`solution(name) = true`.
- For `name = "qq-q"`, the output should be
`solution(name) = false`.
- For `name = "2w2"`, the output should be
`solution(name) = false`.

###### Solution
``` swift
func solution(name: String) -> Bool {
    return name.range(of: "^([a-zA-Z]|_)([a-zA-Z0-9]|\\_)*$", options: .regularExpression, range: nil, locale: nil) != nil
}
```

##### 🚀 Challenge 15 *(Easy)*
Check if all digits of the given integer are even.

###### Example
- For `n = 248622"`, the output should be
`solution(n) = true`.
- For `n = 642386"`, the output should be
`solution(n) = false`.

###### Solution
``` swift
func solution(n: Int) -> Bool {
    for c in String(n) {
        guard Int(String(c))!%2 == 0 else {return false}
    }
    return true
}
```
