##### 🚀 Challenge 4 *(Moderate)*

One of the famous band group is visiting your city and they required few rooms in hotel. Each of the rooms has a different cost, and some of them are free, but there's a rumour that all the free rooms are haunted! Since the band group are quite superstitious, **they refuse to stay in any of the free rooms, as well as any of the rooms below any of the free rooms.**
 
 Given a `matrix of integers`, where each value represents the cost of the room, your task is to return the total sum of all rooms that are suitable for the band group (ie: add up all the values that don't appear below a `0`).

###### Example
<img width="343" alt="Screenshot 2022-07-13 at 12 07 22 PM" src="https://user-images.githubusercontent.com/103515653/178668643-442b3d93-6bdc-4e53-95aa-e31ca42eb942.png">

```swift
matrix = [[0, 1, 1, 2],
          [0, 5, 0, 0],
          [2, 0, 3, 3]]
```
solution is `9`.

###### Sample test

- For
  ```swift
  matrix = [[1, 1, 1, 0], 
            [0, 5, 0, 1], 
            [2, 1, 3, 10]]
  ```
  solution is `9`.
  
- For
  ```swift
  matrix = [[1, 1, 1, 0], 
            [2, 0, 0, 1], 
            [0, 1, 3, 4]]
  ```
  solution is `5`.

```
Solution will be posted on 20th July
```

---

##### 🚀 Challenge 5 *(Easy)*
Write a function to return an array containing all of its longest strings.

###### Example
- For `inputArray = ["aba", "aa", "ad", "vcd", "aba"]`, the output should be
`solution = ["aba", "vcd", "aba"]`.

###### Sample test
- Input `["abc", "eeee", "abcd", "dcd"]`, output `["eeee", "abcd"]`
- Input `["lbgwyqkry"]`, output `["lbgwyqkry"]`

```
Solution will be posted on 20th July
```
