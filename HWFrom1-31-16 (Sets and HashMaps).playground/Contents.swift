import Foundation

//: https://docs.google.com/document/d/1T7tYRqpDPWoxarfmXqfRCHB-YqvA8-Qx_mEyy5smtfc


//1a) Integer Hash Function

func intHash(input: Int) -> String {
    // int mod table size
    
    var arr = ["zero", "one", "two", "three", "four", "five", "six"]
    
    let hash = input % arr.count
    return arr[hash]
}

intHash(1)
intHash(2)
intHash(5)
intHash(10) // 10/7 = 3
intHash(3)  // collision? different input int results in same output
intHash(3) // input of 3 still results in same output
intHash(3)

// Consistently returns the same hash value if input is the same, unsure if collision is avoided

//1b) 

//struct Point: Hashable {
//let x, y: Int
//}


//1c) Array<Int>



//2)

func moderate(input: String) -> Bool {
    let blackListed = Set(["crapple", "fandroids", "m$"])
//    let whiteSpace = NSCharacterSet(charactersInString: " ")
//    let userInput = Set(input.lowercaseString.componentsSeparatedByCharactersInSet(whiteSpace))
    let userInput = Set(input.lowercaseString.componentsSeparatedByString(" "))
    let compareInputAndBlackListed = blackListed.intersect(userInput)
    let isInputTrueOrFalse = compareInputAndBlackListed.isEmpty
    
    return isInputTrueOrFalse
}

moderate("I would never use a crApple product!") // false (reject)
moderate("I wish all these FANDROIDS would just shut up!") // false
moderate("M$ is the worst, Linux rules!") // false
moderate("Can’t we all just get along?") // true (approve)

moderate("Hello World!")
moderate("Hello FANDROI D S")
moderate("Hello FANDROID")


//3)

protocol PhoneBook {
    mutating func addEntry(name: String, phoneNumber: String)
    mutating func removeEntry(name: String)
    mutating func importFrom(
}
