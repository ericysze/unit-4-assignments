/*


Homework link: https://docs.google.com/document/d/1INvOynuggw69yLRNg3y-TPwBiYb3lQZQiFUOxZKBwsY/edit#heading=h.za36ai6n5fth



*/



//Question 1

// ITERATIVE FIB SEQ
func fib_seq(n: Int) -> Int {
    
    var first = 0, prev = 1, sum = 1
    
    for var i = 0; i < n; i++ {
        first = prev
        prev = sum
        sum = first + prev
    }
    return first
}

fib_seq(5)

// RECURSIVE FIB SEQ
func fib(n: Int) -> Int {
    print("X")
    if (n == 0 || n == 1) {
        return 1
    }
    return fib(n - 1) + fib(n - 2)
}

fib(4)

// The iterative fibonacci function is more efficient in performance than the non-memoized recursive one.

//Question 2

import Foundation

var stepNum = 0
func tryStep() -> Int {
    let stepCount = Int(arc4random_uniform(3)) - 1
    stepNum += stepCount;
    switch(stepCount) {
    case -1: print("Ouch \(stepNum)")
    case 1: print("Yay  \(stepNum)")
    default: print("Beep \(stepNum)")
    }
    return stepCount
}


func stepUp() {
    if tryStep() == 1 {
        return
    }
    stepUp()
    stepUp()
}


//Question 3

