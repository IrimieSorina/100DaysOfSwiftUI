import Cocoa

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

var oddNumbers = luckyNumbers.filter { number in
    number % 2 != 0
}

var asscendingOrderNumners = oddNumbers.sorted { $0 < $1 }

var mapNumbers = asscendingOrderNumners.map { number in
    "\(number) is a lucky number \n"
}

print(luckyNumbers.sorted()
        .filter { !$0.isMultiple(of: 2) }
        .map { "\($0) is a lucky number \n" }
)

print(mapNumbers)
