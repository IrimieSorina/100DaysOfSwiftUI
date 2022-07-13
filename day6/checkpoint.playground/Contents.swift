import Cocoa

for number in 1...100 {
    if number % 3 == 0 && number % 5 == 0 {
        print("\(number) should print \"FizzBuzz\"")
    } else if number % 3 == 0 {
        print("\(number) should print \"Fizz\"")
    }else if number % 5 == 0 {
        print("\(number) should print \"Buzz\"")
    } else {
        print("\(number) should print \"\(number)\"")
    }
}
