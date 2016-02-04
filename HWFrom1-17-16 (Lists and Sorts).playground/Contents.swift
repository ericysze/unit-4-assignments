//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*


Work on your solutions here.

Link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth

1) 

func getValidNumbers(sudokuBoard:[[Int?]], row:Int, col:Int) -> [Int] {
var valid: Set<Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9]

for c in 0..<sudokuBoard[row].count {
if c == col {
continue
}
if let value = sudokuBoard[row][c] {
valid.remove(value)
}
}

for r in 0..<sudokuBoard.count {
if r == row {
continue
}
if let value = sudokuBoard[r][col] {
valid.remove(value)
}
}

let sqRow = row / 3
let sqCol = col / 3

for r in sqRow..<(sqRow + 3 ) {
for c in sqCol..<(sqCol + 3) {
if r == row && c == col {
continue
}
if let value = sudokuBoard[r][c] {
valid.remove(value)
}
}
}
// Turn the set into an array
return Array<Int>(valid)
}

let sampleInput: [[Int?]] = [
[5, 0, 8, 0, 7, 3, 1, 9, 0],
[9, 0, 0, 6, 0, 0, 4, 0, 8],
[0, 0, 0, 9, 0, 8, 0, 3, 5],
[0, 7, 0, 0, 0, 0, 0, 6, 0],
[0, 0, 2, 0, 0, 0, 9, 0, 0],
[0, 1, 0, 0, 0, 0, 0, 8, 0],
[1, 9, 0, 3, 0, 6, 0, 0, 0],
[2, 0, 3, 0, 0, 7, 0, 0, 9],
[0, 8, 7, 1, 9, 0, 3, 0, 4]
]

getValidNumbers(sampleInput, row: 0, col: 1)


2)

var arr = [
[1, 2, 3, 4],
[5, 6, 7, 8],
[9, 0, 1, 2],
[3, 4, 5, 6]
]

for var i = 0; i < arr.count; i++ {
for var j = arr.count - 1; j >= 0; j-- {
print(arr[j][i])
}
}




3)



<<<<<<< HEAD


*/





func mySort(values: [Int]) -> [Int] {
    var left = values[0...1]
    if left[0] > left[1] {
        let t = left[0]
        left[0] = left[1]
        left[1] = t
    }
}





var arr = [
    [1, 2, 3, 4],
    [5, 6, 7, 8],
    [9, 0, 1, 2],
    [3, 4, 5, 6]
]

func rotate(matrix: [[Int]]) -> [[Int]] {
    var newArr = arr
    for var i = 0; i < arr.count; i++ {
        for var j = arr.count - 1; j >= 0; j-- {
            newArr[j][arr.count-1-i] = arr[i][j]
        }
    }
    
    return newArr
}

rotate(arr)





func getValidNumbers(sudokuBoard:[[Int?]], row:Int, col:Int) -> [Int] {
    var valid: Set<Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    
    for c in 0..<sudokuBoard[row].count {
        if c == col {
            continue
        }
        if let value = sudokuBoard[row][c] {
            valid.remove(value)
        }
    }
    
    for r in 0..<sudokuBoard.count {
        if r == row {
            continue
        }
        if let value = sudokuBoard[r][col] {
            valid.remove(value)
        }
    }
    
    let sqRow = row / 3
    let sqCol = col / 3
    
    for r in sqRow..<(sqRow + 3 ) {
        for c in sqCol..<(sqCol + 3) {
            if r == row && c == col {
                continue
            }
            if let value = sudokuBoard[r][c] {
                valid.remove(value)
            }
        }
    }
    // Turn the set into an array
    return Array<Int>(valid)
}

let sampleInput: [[Int?]] = [
    [5, 0, 8, 0, 7, 3, 1, 9, 0],
    [9, 0, 0, 6, 0, 0, 4, 0, 8],
    [0, 0, 0, 9, 0, 8, 0, 3, 5],
    [0, 7, 0, 0, 0, 0, 0, 6, 0],
    [0, 0, 2, 0, 0, 0, 9, 0, 0],
    [0, 1, 0, 0, 0, 0, 0, 8, 0],
    [1, 9, 0, 3, 0, 6, 0, 0, 0],
    [2, 0, 3, 0, 0, 7, 0, 0, 9],
    [0, 8, 7, 1, 9, 0, 3, 0, 4]
]

getValidNumbers(sampleInput, row: 0, col: 1)
=======
*/
>>>>>>> 2920be8af73a2486663dc7be5c9fe43726a946de
