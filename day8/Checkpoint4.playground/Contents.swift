import Cocoa

enum SquareError : Error {
    case outOfBounds
    case noRoot
}

func calculateSquareRoot(for number: Int) throws -> Int {
    if number < 1 || number > 10_000 {
        throw SquareError.outOfBounds
    }
    for i in 2...100 {
        if i * i == number {
            return i
        }
    }
    throw SquareError.noRoot
}

do {
    try print(calculateSquareRoot(for: 36))
} catch {
    print(error)
}

