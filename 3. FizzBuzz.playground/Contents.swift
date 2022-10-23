//For every value in a given range, print out “FIZZ” if the current number is evenly divisible by 3. If the number is evenly divisible by 5, print out “BUZZ.” If the number is evenly divisible by both 3 and 5, then print out “FIZZ BUZZ.” If the number is not evenly divisible by 3 or 5, then simply print out the number.
//For example, over the range of 1 through 10, playing Fizz Buzz should yield this: “1, 2, FIZZ, 4, BUZZ, FIZZ, 7, 8, FIZZ, BUZZ.”
//Computers love to play Fizz Buzz. The game is perfect for loops and conditionals. Loop over the range from 0 through 100 and print “FIZZ,” “BUZZ,” “FIZZ BUZZ,” or the number appropriately for each number in the range.
//For bonus points, solve Fizz Buzz with both an if/else conditional and a switch statement. When using the switch statement, make sure to match against a tuple in its various cases.

// with for-in
//func fizzBuzz(_ input: Range<Int>) {
//    guard input.isEmpty, input.count > 1 else {
//        print(input)
//        return
//    }
//
//    for each in stride(from: input.first!, to: input.last!, by: 1) {
//        switch each {
//        case _ where each % 3 == 0:
//            print("FIZZ")
//        case _ where each % 5 == 0:
//            print("BUZZ")
//        case _ where each % 3 == 0 && each % 5 == 0:
//            print("FIZZBUZZ")
//        default:
//            print(each)
//        }
//    }
//}
//
//func fizzBuzzWithWhile(_ input: Range<Int>) {
//    guard input.isEmpty, input.count > 1 else {
//        print(input)
//        return
//    }
//
//    let array = stride(from: input.first!, to: input.last!, by: 1).map { Int($0) }
//    var i = input.first!
//    var count = 0
//
//    while count < array.count {
//        switch i {
//        case _ where i % 3 == 0:
//            print("FIZZ")
//        case _ where i % 5 == 0:
//            print("BUZZ")
//        case _ where i % 3 == 0 && i % 5 == 0:
//            print("FIZZBUZZ")
//        default:
//            print(i)
//        }
//
//        i = array[count]
//        count += 1
//    }
//}

let input: ClosedRange<Int> = 1...10

if input.isEmpty, input.count > 1 {
    print(input)
}

for each in input {//stride(from: input.first!, to: input.last!, by: 1) {
    switch each {
    case _ where each % 3 == 0:
        print("FIZZ")
    case _ where each % 5 == 0:
        print("BUZZ")
    case _ where each % 3 == 0 && each % 5 == 0:
        print("FIZZBUZZ")
    default:
        print(each)
    }
}
