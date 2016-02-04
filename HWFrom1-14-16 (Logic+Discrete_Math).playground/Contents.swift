//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


/*

Question 1: https://www.hackerrank.com/challenges/minimum-draws

Copy and paste your code:

let testCases = Int(readLine(stripNewline: true)!)!

for var x = 0; x < testCases; x++ {
    let n = Int(readLine(stripNewline: true)!)!
    print(n + 1)
}

What is the big O runtime of your code?:

O(n)

Question 2: https://www.hackerrank.com/challenges/handshake

Copy and paste your code:

let testCases = Int(readLine(stripNewline: true)!)!

for var x = 0; x < testCases; x++ {
    let n = Int(readLine(stripNewline: true)!)!
    print((n)*(n-1)/2)
}

What is the big O runtime of your code?:

O(n)

Question 3: https://www.hackerrank.com/challenges/connecting-towns

Copy and paste your code:

// ask user how many cases they want to test
let testCases = Int(readLine(stripNewline: true)!)!


// ask user for how many towns or nodes are in each case (in order)
for var x = 0; x < testCases ; x++ {
// ask user for input for number of towns
// and for the number of towns, ask how many routes
let towns = Int(readLine(stripNewline: true)!)!
// if there are n # of towns, ask user for how many routes there are from town to town
// it should only ask the number of towns - 1
var routes = readLine(stripNewline: true)!
// now ask the number of routes from each town, input has to include spaces
let routeArr = routes.characters.split{$0 == " "}.map(String.init)
var count = towns - 1
// after the number of routes has been determined by user's input
// create an algorithm to solve for output
// output needs to be set to one or it will always be 0
var output = 1
for i in 0..<routeArr.count {
// now that each route is stored into an array relative to their input, multiply each number by the next in order by looping through the array,
// output of routes will be index[0] * index [1] * index [2]

let routeInt = Int(routeArr[i])!
output *= routeInt
output %= 1234567
}

//    var output = routeArray.reduce(1, combine: *)
print(output)
// explicity set output back to one or it will multiply next output with previous output
output = 1
}

What is the big O runtime of your code?:

O(n^2)

*/
