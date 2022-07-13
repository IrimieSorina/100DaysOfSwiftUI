import Cocoa

class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("ham, ham")
    }
}

class Corgi: Dog {
    override func speak() {
        print("haam")
    }
}

class Poodle: Dog {
    override func speak() {
        print("ham, ham, haaaam")
    }
}


class Cat: Animal {
    var isTame: Bool
    
    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        print("miau, miau")
    }
}

class Persian: Cat {
    override func speak() {
        print("miiiaaaau")
    }
}

class Lion: Cat {
    override func speak() {
        print("miauuuuu")
    }
}
