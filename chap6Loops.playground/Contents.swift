//: Playground - noun: a place where people can play

import UIKit

// For-in Loop
var myFirstInt: Int = 0

for i in 1...5 {
    myFirstInt += 1
    print("my integer equals \(myFirstInt) at iteration \(i)")
}

// For-Case Loop
for case let i in 1...100 where i % 3 == 0{
    print(i)
}

// For Loop (classic) - has been removed since Swift 3
/* for initialization; condition; increment {
 code to execute
 }
*/

// While Loop - best for number of iterations pass through is unknown
var i = 1
while i < 6 {
    myFirstInt += 1
    print(myFirstInt)
    i += 1
}

//Repeat-While Loop - execute the code once before it checks the conditions
repeat {
    print(myFirstInt)
    i+=1
} while i < 6
