import UIKit

//Unowned references do not hold a strong reference
//You must make sure at least one other reference to the instance will outlast the unowned reference.
//Unowned references must reference non-optional types.  Because they are expected to always have a value.  And therefore doesn't include any safety features to account for reference a deallocated instance.  So your program will runtime crash if the instance your unowned reference references is deallocated.

class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {self.name = name}
    deinit {
        print("\(name) is being deinitialized")
    }
}

class CreditCard {
    let number: UInt64
    unowned let customer: Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit {print("card # \(number) is deinitialized")}
}

var john: Customer?
john = Customer(name: "John")
john!.card = CreditCard(number: 1234_5678_9012_3456, customer: john!)
john = nil








class Example {}
//unowned var new = Example()



















































