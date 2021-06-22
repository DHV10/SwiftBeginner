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
 
    
    var myArray: [String] = ["hunger", "dirt", "boredom", "drowsoness"]
    
    var arr: [Int] = [0, 0, 0, 0]
    
    var ageInDays: Double = 0
    var age: Double? {
        return ageInDays/30
    }
  
    
    override init(){
        super.init()
        arr[2] = 60
        ageInDays = 0
    }
    
    convenience override init(_ name: String ) {
        self.init()
        self.name = name
    }
    
    override func feed() {
        if arr[0] == 0{
            print("\(name) is already full")
        }else{
        arr[0] = 0
        arr[2] += 20
        arr[1] += 20
        arr[3] += 10
        }
    }
    override func clean() {
        if arr[1] == 0{
            print("\(name) is already clean")
        }else{
            arr[1] = 0
            arr[0] += 20
            arr[2] += 20
            arr[3] += 10
        }
    }
    
    override func play() {
        if arr[2] == 0 {
            print("\(name) is already done")
        }else{
            arr[0] += 20
            arr[2] = 0
            arr[1] += 20
            arr[3] += 10
        }
    }
    
    override func sleep() {
        if arr[3] == 0 {
            print("\(name) is already slept")
        }else{
            arr[1] += 20
            arr[2] += 20
            arr[0] += 10
            arr[3] = 0
            ageInDays += 1
        }
    }
    
    func check(){
        print(arr[0])
        print(arr[1])
        print(arr[2])
        print(arr[3])
        
        if arr[0] >= 60 {
            print("\(name) is hungry")
        }
        if arr[1] >= 60 {
            print("\(name) is dirty")
        }
        if arr[2] >= 60 {
            print("\(name) is bored")
        }
        if arr[3] >= 60 {
            print("\(name) is sleepy")
        }
    }
    
    func getAge(){
        print("\(name) is \(age!) months olds")
    }
}

var tamogo = Tamogotchi("tom")


for _ in 1...15 {
    tamogo.sleep()
    tamogo.play()
    tamogo.sleep()
    tamogo.feed()
    tamogo.clean()
    
}
print(tamogo.name)
tamogo.getAge()


