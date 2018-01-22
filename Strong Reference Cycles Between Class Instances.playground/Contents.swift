import UIKit

class Person {
    let name: String
    var apartment: Apartment?
    init(name: String) {
        self.name = name
        print("\(name) was initialized")
    }
    deinit {
        print("\(name) was DEinitialized")
    }
}

class Apartment {
    let unit: String
    var tenant: Person?
    init(unit: String) {
        self.unit = unit
        print("\(unit) was initialized")
    }
    deinit {
        print("\(unit) was deinitialized")
    }
}

var john: Person?
var unit4A: Apartment?

john = Person(name: "John")
//reference count to the instance created on line 30 = 1 strong
unit4A = Apartment(unit: "4")
//reference count to the instance created on line 32 = 1 strong
john!.apartment = unit4A
//reference count to the instance created on line 30 = 2 strong
unit4A!.tenant = john
//reference count to the instance created on line 32 = 2 strong

john = nil
//reference count to the instance created on line 30 = 1 strong
unit4A = nil
//reference count to the instance created on line 32 = 1 strong

