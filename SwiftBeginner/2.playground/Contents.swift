import UIKit

var firstName: String = "Duong Hoang"
var lastName: String = "Viet"
var gender: String = "Male"
var age: Int = 21
var cashOnHand: Double = 50.0
var hasChildren: Bool = false

print(firstName)
print(lastName)
print(gender)
print(age)
print(cashOnHand)
print(hasChildren)

if hasChildren {
    print("Being a parent is hard, my money goes to my children instead of games!")
}

else if age > 18 {
    print("Adulting is hard I cant buy the game because I need to pay bills")
}

else {
    print(" am young and i cant do what I want so gimme that game !")
}
