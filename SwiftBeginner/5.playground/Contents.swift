import UIKit

var drawPixel: String = "*"
var height: Int = 7
var tempRow: String

for columnPixel in  1...height {
    tempRow = ""
    for _ in 1...columnPixel {
        tempRow += drawPixel
    }
  print(tempRow)
}
