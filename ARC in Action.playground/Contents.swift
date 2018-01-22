import UIKit

class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit {
        print("\(name)is being deinitialized")
    }
}

var reference1: Person?
var reference2: Person?
var reference3: Person?

reference1 = /*Instance>>>>*/Person(name: "John AppleSeed")
//The instance on line 18 has 1 strong reference
reference2 = reference1
//The instance on line 18 has 2 strong references
reference3 = reference1
//The instance on line 18 has 3 strong references
reference3 = nil
reference2 = nil
reference1 = nil
