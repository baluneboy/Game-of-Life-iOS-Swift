
import Foundation

class Utils {
    static func toRoman(number: Int) -> String {
        let romanValues = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
        let arabicValues = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
        
        var romanValue = ""
        var startingValue = number
        
        for (index, romanChar) in romanValues.enumerate() {
            let arabicValue = arabicValues[index]
            
            let div = startingValue / arabicValue
            
            if (div > 0)
            {
                for _ in 0..<div
                {
                    romanValue += romanChar
                }
                
                startingValue -= arabicValue * div
            }
        }
        
        return romanValue
    }
}