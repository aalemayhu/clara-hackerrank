import Foundation

func buildDict(var input: [String]) -> [String] {
    var m = [String]()
    var prop = [String : Int]()
    if let first = Int(input.first!) {
        var i = 1
        while i <= first*2 {
            let key = input[i].lowercaseString
            let value = Int(input[i+1])
            prop[key] = value
            i += 2
        }
        
        while i < input.count {
            let key = input[i]
            if let value = prop[key] {
                m.append("\(key)=\(value)")
            } else {
                m.append("Not found")
            }
            i += 1
        }
    }
    return m
}

extension String {
    func trim() -> String {
        return self.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    }
}


var input = [String]()
var line = readLine()
repeat {
    if let i = line {
        input.append(i.trim())
    }
    line = readLine()
} while line != nil

let dict = buildDict(input)

for entry in dict {
    print(entry)
}