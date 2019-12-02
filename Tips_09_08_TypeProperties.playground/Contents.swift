import UIKit
import PlaygroundSupport

extension UIColor{
    
}

class ViewController1:UIViewController{
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = UIColor.green
        self.view = view
    }
}
let vc = ViewController1()
PlaygroundPage.current.liveView = vc

class MyClass{
    //: Instance Constants and variables 
    var instanceVariable = 3
    let instanceConstant = 2
    //: Make these type variables by prefixing with `static` 
    static let typeConstant = 5
    static var typeVariable = 6
    static var typeComputedVariable:Int{
        typeVariable * 2
    }
}

let a = MyClass()
a.instanceConstant 
a.instanceVariable

MyClass.typeConstant
MyClass.typeVariable
MyClass.typeComputedVariable
