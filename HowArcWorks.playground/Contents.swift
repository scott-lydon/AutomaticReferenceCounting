//-------------AUTOMATIC REFERENCE COUNTING
import UIKit
//How ARC Works
//Automatic Reference Counting

class Example {
    init() {
        print("initialized")
    }
    deinit {
        print("deinitialized")
    }
}

var new: Example? = Example()
//the instance of Example on line 15 has a
//count of 1
new = nil
//count is 0



























































//ARC in Action
//Strong Reference Cycles Between Class Instances
//Weak References
//Unowned References
//Strong Reference Cycles for Closures
//Resolving Strong reference cycles for closures
//Defining a capture list
//Weak and Unowned References
