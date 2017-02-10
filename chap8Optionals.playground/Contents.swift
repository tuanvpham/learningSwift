//: Playground - noun: a place where people can play

import UIKit

/* Optionals: an instance may not have a value.
 When using optionals, one of two things: either it has a value and it is ready for use, or it has no value (nil) */

var errorCodeString: String?
errorCodeString = "404"
print(errorCodeString)

//use if to check whether the optional is nil or not

/* if errorCodeString != nil {
    let theError = errorCodeString!
    
    Exclamation mark: forced unwrapping
    Forced unwrapping accesses the underlying value of the optional whether or not there is actually a vlue here at all
    
    If there is no value, unwrapping would lead to a runtime error. Use it with caution!
    
    print(theError)
}
*/


// Optional Binding: a pattern to detect whether an optional contains a value
/* if let temporaryConstant = anOptional {
    do something with temporary Constant
 } else {
 There was no value in Optional or optional is nil
 }
*/
if let theError = errorCodeString {
    print(theError)
}


