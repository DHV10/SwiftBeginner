import UIKit

class Pets{
    var name: String = ""
    var age: Int = 0
    
    init() {
        self.name = "tom"
    }
    
    init(_ name: String) {
        self.name = name
       
    }
    
   
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

let myPet = Pets()
let myPet1 = Pets("dog")
print(myPet.name)
print(myPet.age)
print(myPet1.name)
print(myPet1.age)

class Tamogotchi: Pets {
    var hunger: Int = 0
    var dirt: Int = 0
    var boredom: Int = 0
    var drowsoness: Int = 0
  
    
    override init(){
        super.init()
        boredom = 60
    }
    
  override init(_ name: String) {
        super.init(name)
        self.boredom = 60
        
        
    }
    
    override func feed() {
        if hunger == 0{
            print("\(name) is already full")
        }else{
        hunger = 0
        boredom += 20
        dirt += 20
        drowsoness += 10
        }
    }
    override func clean() {
        if dirt == 0{
            print("\(name) is already clean")
        }else{
            dirt = 0
            hunger += 20
            boredom += 20
            drowsoness += 10
        }
    }
    
    override func play() {
        if boredom == 0 {
            print("\(name) is already done")
        }else{
            hunger += 20
            boredom = 0
            dirt += 20
            drowsoness += 10
        }
    }
    
    override func sleep() {
        if drowsoness == 0 {
            print("\(name) is already slept")
        }else{
            hunger += 20
            boredom += 20
            dirt += 10
            drowsoness = 0
        }
    }
    
    func check(){
        print(hunger)
        print(dirt)
        print(boredom)
        print(drowsoness)
        
        if hunger >= 60 {
            print("\(name) is hungry")
        }
        if dirt >= 60 {
            print("\(name) is dirty")
        }
        if boredom >= 60 {
            print("\(name) is bored")
        }
        if drowsoness >= 60 {
            print("\(name) is sleepy")
        }
    }
}

var tamogo = Tamogotchi("probui")
var tamago2 = Tamogotchi()

tamogo.play()
tamogo.sleep()
tamogo.play()
tamogo.clean()
tamogo.play()
tamogo.feed()
tamogo.feed()
tamogo.feed()
tamogo.feed()
tamogo.check()


    


