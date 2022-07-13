import Cocoa

func greetUser() {
    print("Hi there!")
}

greetUser()

let str: String = ""

var greetCopy = greetUser
greetCopy()

var greetCopy1: () -> Void = greetUser
greetCopy1()

let sayHello = {
    print("Hi there!")
}

sayHello()

let sayHello1 = { (name: String) -> String in
    "Hi \(name)!"
}

sayHello1("sorina")



func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)


let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

let learnSwift = {
    print("Closures are like functions")
}
learnSwift()

var cutGrass = { ( currentLength: Double) in
    switch currentLength {
    case 0...1:
        print("That's too short")
    case 1...3:
        print("It's already the right length")
    default:
        print("That's perfect.")
    
    }
}

func animate(duration: Double, animations: () -> Void) {
    print("Starting a \(duration) second animation…")
    animations()
}

animate(duration: 3, animations: {
    print("Fade out the image")
})

animate(duration: 3) {
    print("Fade out the image")
}


