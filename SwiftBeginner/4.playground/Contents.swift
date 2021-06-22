import UIKit

var strOperator: String = "*"
var num1: Int = 3
var num2: Int = 4
var result: Int = 0

switch strOperator {
case "+" :
   result = num1 + num2
    print(result)
case "-" :
   result = num1 - num2
    print(result)
case "*", "x" :
   result = num1 * num2
    print(result)
case "/" :
   result = num1 / num2
    print(result)
default:
      print("none")
}
