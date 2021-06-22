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

class Tamogotchi: Pets {
    var hunger: Int = 0
    var dirt: Int = 0
    var boredom: Int = 0
    var drowsoness: Int = 0
    
    override func feed() {
        hunger = 0
        boredom = 20
        dirt = 20
        drowsoness = 10
    }
    override func clean() {
        hunger = 20
        boredom = 20
        dirt = 0
        drowsoness = 10
    }
    
    override func play() {
        hunger = 20
        boredom = 0
        dirt = 20
        drowsoness = 10
    }
    
    override func sleep() {
        hunger = 20
        boredom = 20
        dirt = 10
        drowsoness = 0
    }
    
    func check(){
        print(hunger)
        print(dirt)
        print(boredom)
        print(drowsoness)
    }
}

var game = Tamogotchi()
game.name = "dog"
game.clean()
//game.sleep()
game.check()
