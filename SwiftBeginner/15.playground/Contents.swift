import UIKit

class Pets{
    var name: String = ""

    
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



class Tamogotchi: Pets {
    
  
    
    var myDictionary: [String: Int] = ["hunger": 0, "dirt" : 0, "boredom" : 0, "drowsoness" : 0]
    
    var ageInDays: Double = 0
    var age: Double? {
        return ageInDays/30
    }
  
    
    override init(){
        super.init()
//        boredom = 60
        myDictionary["boredom"] = 60
        ageInDays = 0
    }
    
  override init(_ name: String) {
        super.init(name)
        self.myDictionary["boredom"] = 60
        ageInDays = 0
    }
    
    override func feed() {
        if myDictionary["hunger"] == 0{
            print("\(name) is already full")
        }else{
            myDictionary["hunger"]  = 0
            myDictionary["boredom"]?  += 20
            myDictionary["dirt"]?  += 20
            myDictionary["drowsoness"]? += 10
        }
    }
    override func clean() {
        if myDictionary["dirt"] == 0{
            print("\(name) is already clean")
        }else{
            myDictionary["dirt"] = 0
            myDictionary["hunger"]?  += 20
            myDictionary["boredom"]?  += 20
            myDictionary["drowsoness"]? += 10
        }
    }
    
    override func play() {
        if myDictionary["boredom"] == 0 {
            print("\(name) is already done")
        }else{
            myDictionary["hunger"]? += 20
            myDictionary["boredom"] = 0
            myDictionary["dirt"]? += 20
            myDictionary["drowsoness"]? += 10
        }
    }
    
    override func sleep() {
        if myDictionary["drowsoness"] == 0 {
            print("\(name) is already slept")
        }else{
            myDictionary["hunger"]? += 20
            myDictionary["boredom"]? += 20
            myDictionary["dirt"]? += 10
            myDictionary["drowsoness"] = 0
            ageInDays += 1
        }
    }
    
    func check(){
        print(myDictionary["hunger"]!)
        print(myDictionary["dirt"]!)
        print(myDictionary["boredom"]!)
        print(myDictionary["drowsoness"]!)
        
        if myDictionary["hunger"]! >= 60 {
            print("\(name) is hungry")
        }
        if myDictionary["dirt"]! >= 60 {
            print("\(name) is dirty")
        }
        if myDictionary["boredom"]! >= 60 {
            print("\(name) is bored")
        }
        if myDictionary["drowsoness"]! >= 60 {
            print("\(name) is sleepy")
        }
    }
    
    func getAge(){
        print("\(name) is \(age!) months olds")
    }
}

var tamogo = Tamogotchi()
tamogo.name = "dog"

for _ in 1...15 {
    tamogo.sleep()
    tamogo.play()
    tamogo.sleep()
    tamogo.feed()
    tamogo.clean()
    
}

tamogo.getAge()


