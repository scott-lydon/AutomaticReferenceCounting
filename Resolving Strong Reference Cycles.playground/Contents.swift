import UIKit

class HTMLElement {
    let name: String
    let text: String?
    lazy var asHTML: () -> String  = {
        [unowned self] in
        return "<\(self.name)>\(self.text ?? "")</\(self.name)>"
    }
    
    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }
    deinit {print("\(name) is being deinitialized")}
}

var headerTitle: HTMLElement? = HTMLElement(name: "h1", text: "Welcome")
print(headerTitle!.asHTML())
print(#line)
headerTitle = nil
print(#line)

