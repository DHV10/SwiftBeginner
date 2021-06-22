import UIKit

var cashOneHand: Double = 100
var runningCash: Double
var percentGain: Double = 0.1
var yearsToInvest: Int = 10
var yearsElapseed: Int = 0

runningCash = cashOneHand
while yearsElapseed < yearsToInvest {
    runningCash = runningCash + runningCash*percentGain
    print(runningCash)
    yearsElapseed += 1
}


