import Foundation

/*
 ___                _
/ __|___  ___  __ _| |___
|(_ / _ \/ _ \/ _` | / -_)
\___\___/\___/\__, |_\___|
              |___/

 Given a set of numbers, determine if there is a pair that equals a given sum.

 */

func hasPairWithSum(_ arr: [Int], _ sum: Int) -> Bool {
    var comp = Set<Int>()

    for value in arr {
        if comp.contains(value) {
            return true
        }
        comp.insert(sum - value)
    }
    return false
}

hasPairWithSum([1, 2, 4, 9], 8)
hasPairWithSum([1, 2, 4, 4], 8)
