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


var n = getIntegerLineOrZero()

repeat {
    if let line = readLine() {
        let numbers = line
            .stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
            .characters.split(" ").map(String.init).reverse()
        for i in numbers {
            print(i, terminator: " ")
        }
    }
    
    n = getIntegerLineOrZero()
} while n > 0