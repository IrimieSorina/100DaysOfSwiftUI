import Cocoa

func randomInt(array: [Int]?) -> Int {
    return array?.randomElement() ?? Int.random(in: 1...100)
}

print(randomInt(array: nil))
print(randomInt(array: []))
print(randomInt(array: [1,5,2,10,2]))
