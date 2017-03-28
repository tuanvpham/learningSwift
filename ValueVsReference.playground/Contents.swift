//: Playground - noun: a place where people can play

import UIKit

/* Value Semantic -- Pass by Value
Value types: a copy of the instance when you assign it to a new constant or variable - the value will not change
 
 Array, Dict, Int, String, or any kind of struct types
*/
var str = "Hello, playground"
var playgroundMeeting = str
playgroundMeeting += "! How are you today?"
str

/* Reference Semantics -- Pass by Reference
 Constant or variable refers to an instance of some class in memory - just a reference, the value will change
 
 Class
 */
class GreekGod {
    var name: String
    init(name: String) {
        self.name = name
    }
}

let hecate = GreekGod(name: "Hecate")
let anotherHecate = hecate

anotherHecate.name = "Another Hecate"
anotherHecate.name
hecate.name
// Because hecate and anotherHecate refer to the same instance of GreekGod, a change in one will be reflected in the other

struct Pantheon {
    var chiefGod: GreekGod
}

let pantheon = Pantheon(chiefGod: hecate)
let zeus = GreekGod(name: "Zeus")
zeus.name = "Zeus Jr"
zeus.name