import UIKit
import CoreFoundation

class Animal {
    var numberOfLegs: Int
    init(numOfLegs: Int = 4) {
        self.numberOfLegs = numOfLegs
    }
}

class Dog: Animal {
    func speak() {
        print("Bark!")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Cooorrgiii")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Poooooooodle")
    }
}


class Cat: Animal {
    var isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
    }
    
    func speak() {
        print("Meeoow..")
    }
}

class Persian: Cat {
    override func speak() {
        print("Peeererersian")
    }
}

class Lion: Cat {
    override func speak() {
        print("WWWRRGGHHHaaaaarrrrghhh")
    }
}
