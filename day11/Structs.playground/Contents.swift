import Cocoa

struct Doctor {
    var name: String
    var location: String
    //private var currentPatient = "No one"
}
let drJones = Doctor(name: "Esther Jones", location: "Bristol")


struct School {
    var staffNames: [String]
    private var studentNames: [String]
    init(staff: String...) { //ask
        self.staffNames = staff
        self.studentNames = [String]()
    }
}
let royalHigh = School(staff: "Mrs Hughes", "erfg")

struct App {
    var name: String
    private var sales = 0
    init(name: String) {
        self.name = name
    }
}
let spotify = App(name: "Spotify")


struct School1 {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School1.add(student: "Taylor Swift")
print(School1.studentCount)


struct Amplifier {
    static let maximumVolume = 11
    var currentVolume: Int
}
