/*
 struct StructName {
    var variableName (this is properties)
 }
 */

import Foundation
struct Town {
    // Stored properties (mutation)
    var population = 5422 {
        didSet(oldPopulation) {
            print("The population has changed to \(population) from \(oldPopulation)")
        }
    }
    var numberOfStopLights = 4
    
    // inmutation properties
    // Type property
    static let region = "South"
    
    // Nested type properties
    enum Size {
        case Small
        case Medium
        case Large
    }
    
    // Lazy Stored Properties: The town size will be determined after the population is calculated
    /*lazy var townSize: Size = {
        switch self.population  {
        case 0...10000:
            return Size.Small
        case 10001...100000:
            return Size.Medium
        default:
            return Size.Large
        }
    }()
     */
    
    // Computed Properties: Get
    var townSize: Size {
        get {
            switch self.population  {
            case 0...10000:
                return Size.Small
            case 10001...100000:
                return Size.Medium
            default:
                return Size.Large
            }
        }
    }

    func printTownDescription() {
        print("Population: \(population); number of stopLights: \(numberOfStopLights)")
    }
    
    mutating func changePopulation(amount:Int) {
        population += amount
    }
}
