import UIKit

//The person and Apartment: both properties can be nil (optional),  strong reference solution: weak reference
//Customer Credit: the credit card property can be nil (optional), credit card's customer property can never be nil: solution : unowned reference.
//Country and a City: both properties must always have a value, unowned reference with a implicitly unwrapped optional property on the other class.

class Country {
    let name: String
    var capitalCity: City!
    init(name: String, capitalName: String) {
        self.name = name
        self.capitalCity = City(name: capitalName, country: self)
    }
    deinit {print("\(name) is being deinitialized")}
}

class City {
    let name: String
    let country: Country
    init(name: String, country: Country) {
        self.name = name
        self.country = country
    }
    deinit {print("\(name) is being deinitialized")}
}

var canada = Country(name: "Canada", capitalName: "Ottawa")
print("\(canada.name)'s capital city is called \(canada.capitalCity.name)")
canada.capitalCity = City(name: "Vancouver", country: canada)


