import Foundation

func getIntegerLineOrZero() -> Int {
  guard let line = readLine(stripNewline: true) else {
    return 0
  }

  guard let integerValue = Int(line) else {
    let trimmedLine = line.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
      if let v = Int(trimmedLine) {
        return v
      }
    return 0
  }

  return integerValue
}

  
    func buildStaircase(topFloor: Int) -> [String] {
        var stairs = [String]()
        var index = 0
        while index < topFloor {
            var level = ""
            var innerIndex = 0
            repeat {
                if innerIndex <= index {
                    level += "#"
                } else {
                    level += " "
                }
                innerIndex++
            } while innerIndex < topFloor
            stairs.append(level)
            index++
        }
        
        return stairs.map { String($0.characters.reverse()) }
    }


var tries = getIntegerLineOrZero()
repeat {
    let stairs = buildStaircase(tries)
    for s in stairs {
        print(s)
    }
    tries = getIntegerLineOrZero()
} while tries > 0
