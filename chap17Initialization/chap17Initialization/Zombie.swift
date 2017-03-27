//
//  Zombie.swift
//  chap17Initialization
//
//  Created by Tuan Pham on 3/26/17.
//  Copyright © 2017 Tuan Pham. All rights reserved.
//

import Foundation
class Zombie: Monster {
    override class var spookyNoise: String {
        return "Brains..."
    }
    
    var walkWithLimp: Bool
    private(set) var isFallingApart: Bool
    
    // Designated initializer
    init(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String) {
        self.walkWithLimp = limp
        self.isFallingApart = fallingApart
        // Call the init from superclass (declare town of Zomie: town of Monster, monsterName of Zombie: monsterName of Monster -- inheritance)
        super.init(town: town, monsterName: monsterName)
    }
    
    // Conveniece initializer: delegate to another initializer on the class
    convenience init(limp: Bool, fallingApart: Bool) {
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred")
        if walkWithLimp {
            print("This zomebie has a bad knee")
        }
    }
    
    // Require initializer from superclass
    required init(town: Town?, monsterName: String) {
        walkWithLimp = false
        isFallingApart = false
        super.init(town: town, monsterName: monsterName)
    }
    final override func terrorizeTown() {
        town?.changePopulation(amount: -10)
        super.terrorizeTown()
    }
    
    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name
    }
    
    deinit {
        print("Zombie named \(name) is no longer with us.")
    }
}
