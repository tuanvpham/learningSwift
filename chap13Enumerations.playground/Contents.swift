//: Playground - noun: a place where people can play

import UIKit

/* Enumerations (enum): create the own types like integers, strings, arrays, and dictionaries
 enum NameOfEnumeration {
    case (at least one case)
    case ...
    case
 }
 */

enum TextAlignment {
    case Left
    case Right
    case Center
    case Justify
}

var alignment: TextAlignment = TextAlignment.Left
// Reassign the alignment with different types
alignment = .Right

if alignment == .Right {
    print("We should right-align the text!")
}
var alignment1 = TextAlignment.Center
switch alignment1 {
case .Left:
    print("Left aligned")
case .Right:
    print("right aligned")
case .Center:
    print("center aligned")
case .Justify:
    print("justified")
}

/* Raw Value Enumerations: store or transmit the enum. Instead of writing functions to transfrom a variable holding an enum, we can use rawValue to convert the variable to its raw value.
 */
enum TextAlignment1: Int {          // Raw Value is Int
    case Left = 20
    case Right = 30
    case Center = 40
    case Justify = 50
}

print("Left has raw value \(TextAlignment1.Left.rawValue)")
//Create a raw value
let myRawValue = 20

// Try to convert the raw value into a TextAlignment1
if let myAlignment = TextAlignment1(rawValue: myRawValue) {
    print("successfully converted \(myRawValue) into TextAlignment1")
} else {
    print("\(myRawValue) has no corresponding TextAlignment case")
}

enum ProgrammingLanguage: String {
    case Swift = "Swift"
    case ObjectiveC = "Objective-C"
    case C = "C"
    case Cpp = "C++"
    case Java = "Java"
}
let myFavoriteLanguage = ProgrammingLanguage.Swift
print("My favortie programming language is \(myFavoriteLanguage.rawValue)")

/* Methods: a function is associated with a type. Can associate with enum
 */
enum Lightbulb {
    case On
    case Off
    
    func surfaceTemperatureForAmbientTemperature(ambient: Double) -> Double {
        switch self {
            case .On:
            return ambient + 150.0
            case .Off:
            return ambient
        }
    }
    
    // Enum will not be allowed to be changed itself, has to add mututing to change its values
    mutating func toggle() {
        switch self {
        case .On:
            self = .Off
        case .Off:
            self = .On
        }
    }
}

var bulb = Lightbulb.On
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperatureForAmbientTemperature(ambient: ambientTemperature)
print("The bulb's temperature is \(bulbTemperature)")

bulb.toggle()
bulbTemperature = bulb.surfaceTemperatureForAmbientTemperature(ambient: ambientTemperature)


/* Associated Values: attach data to instances of an enum
                      different cases have different types of associated values
 */
enum ShapeDimensions {
    // Square's associated value is the length of one side
    case Square(Double)
    
    // Rectangle's associated value defines its width and height
    case Rectangle(width: Double, height: Double)
    
    // for a point
    case Point
    
    func area() -> Double {
        switch self {
        case .Point:
            return 0
        case let .Square(side):
            return side * side
        case let .Rectangle(width: w, height: h):
            return w*h
        }
    }
}

var squareShape = ShapeDimensions.Square(10.0)
var rectShape = ShapeDimensions.Rectangle(width: 5.0, height: 6.0)
var pointShape = ShapeDimensions.Point

print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
print("point's area = \(pointShape.area())")
