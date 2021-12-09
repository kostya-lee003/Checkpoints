import UIKit

enum RootError: Error {
    case OutOfBounds, NoRoot
}

func findSqrt(of number: Int) throws -> Int {
    if number < 1 || number > 10_000 {
        print(RootError.OutOfBounds.localizedDescription)
        throw RootError.OutOfBounds
    } else if number == 1 {
        return 1
    }

    let guess = number <= 196 ? 0.3 : 0.03
    var root = Int(guess * Double(number))
    for _ in 1...200 {
        if Int(root * root) == number {
            print("Root is \(root)")
            return Int(root)
        } else if Int(root * root) < number {
            root += 1
        } else if Int(root * root) > number {
            root -= 1
        }
    }
    throw RootError.NoRoot
}


let number = 16
do {
    try findSqrt(of: number)
} catch RootError.NoRoot {
    print("No root for number \(number)")
} catch RootError.OutOfBounds {
    print("Number is out of bounds")
} catch {
    print("Error!")
}


