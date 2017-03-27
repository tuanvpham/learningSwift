/*
 Zombie is a subclass that inherits from the Monster superclass
    class subclass: superclass {}
 Zombie inherits the Monster properties (town and name) and functions (terrorizeTown())
 */

import Foundation
class Zombie: Monster {
    //Computed type property
    override class var spookyNoise: String {
        return "Brains..."
    }
    var walksWithLimp = true
    
    /* Zombie class overrides the terrortizeTown() func to add its own methods
       Override sample: 
        override func funcFromSuperClass() {
            code
            super.funcFromSuperClass()
        }
    */
    
    //final keyword prevents the Zombie subclass override the terrorizeTown() func in the superclass Monster
    final override func terrorizeTown() {
        town?.changePopulation(amount: -10)
        super.terrorizeTown()
    }
    
    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name
        self.walksWithLimp = walksWithLimp
    }
}
