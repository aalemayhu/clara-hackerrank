import Foundation

func getIntegerLineOrZero() -> Int {
    guard let line = readLine(stripNewline: true) else {
        return 0
    }
    
    guard let integerValue = Int(line) else {
        let characterSet = NSCharacterSet.whitespaceCharacterSet()
        let trimmedLine =
        line.stringByTrimmingCharactersInSet(characterSet)
        if let v = Int(trimmedLine) {
            return v
        }
        return 0
    }
    
    return integerValue
}

func toBinary(value: Int) -> String {
    var output = ""
    var x = value
    repeat {
        
        if x % 2 == 0 {
            output += "0"
        } else {
            output += "1"
        }
        
        x /= 2
    } while x > 0
    
    return String(output.characters.reverse())
}



var n = getIntegerLineOrZero()

repeat {
    
    var count = 0
    repeat {
        let x = getIntegerLineOrZero()
        print(toBinary(x))
        count += 1
    } while count < n
    
    n = getIntegerLineOrZero()
} while n > 0
