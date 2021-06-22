import UIKit
class Pets{
    var name: String = ""
    var age: Int = 0
    
   
    func feed(){
        print("\(name) has been feed")
    }
    
    func clean(){
        print("\(name) has taken a bath")
    }
    
    func play(){
        print("\(name) enjoyed playing with you")
    }
    func sleep(){
        print("\(name) went to sleep")
    }
    
}

var pet = Pets()
pet.name = "abc"
pet.feed()
pet.clean()
pet.play()
pet.sleep()

