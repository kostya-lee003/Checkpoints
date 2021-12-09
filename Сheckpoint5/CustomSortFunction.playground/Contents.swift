import UIKit

func customSort(for luckyNums: [Int]) {
    var filteredNums = [Int]()
    luckyNums.map {
        if $0.isMultiple(of: 2) {
            filteredNums.append($0)
        }
    }
    filteredNums.sort()
    
    var formattedNums = [String]()
    filteredNums.map {
        let formattedNum = "\($0) is a lucky number)"
        formattedNums.append(formattedNum)
    }
    
    for a in 0...formattedNums.count - 1 {
        print(formattedNums[a])
    }
}

let luckyNumbers = [70, 33, 7, 20, 14, 12, 17, 24, 27, 30, 5, 16, 4, 3, 3, 51]
customSort(for: luckyNumbers)
