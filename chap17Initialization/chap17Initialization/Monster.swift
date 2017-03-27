//
//  Monster.swift
//  chap17Initialization
//
//  Created by Tuan Pham on 3/26/17.
//  Copyright © 2017 Tuan Pham. All rights reserved.
//

import Foundation
class Monster {
    
    var town: Town?
    var name: String
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimePool) {
            town?.population = newVictimePool
        }
    }
    
    // Desginated Initializer
    // Require keyword: a class can require its subclasses to provide a specific initializer
    required init(town: Town?, monsterName: String) {
        self.town = town
        self.name = monsterName
    }
    
    class var spookyNoise: String {
        return "Grrr"
    }
    static let isTerriffying = true
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) has not found a town to terrorize yet...")
        }
    }
}
