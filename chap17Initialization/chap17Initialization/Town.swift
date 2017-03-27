//
//  Town.swift
//  chap17Initialization
//
//  Created by Tuan Pham on 3/26/17.
//  Copyright © 2017 Tuan Pham. All rights reserved.
//

import Foundation
struct Town {
    let region: String
    
    var population: Int {
        didSet(oldPopulation) {
            print("The population has changed to \(population) from \(oldPopulation)")
        }
    }
    
    var numberOfStopLights: Int
    
    // Adding a memberwise initializer: takes values from arguments of the initializer and pass them to the actual properties of the type
    init(population: Int, stopLights: Int, region: String) {
        self.population = population
        self.numberOfStopLights = stopLights
        self.region = region
    }
    
    // Initializer Delegation: Initializers to call other initializers on the same type - avoid duplicate code
    init(population: Int, stopLights: Int) {
        self.init(population: population, stopLights: stopLights, region: "N/A")
    }
    
    enum Size {
        case Small
        case Medium
        case Large
    }
    
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
        print("Population: \(population); number of stopLights: \(numberOfStopLights); region: \(region)")
    }
    
    mutating func changePopulation(amount:Int) {
        population += amount
    }
}
