// Azizbek Asadov - 19.10.22

let nums = [1,2,3,4,5,6,7,8,98,9,9,3].sorted()

func binary(_ n: Int) -> Int {
    if nums.isEmpty {
        return -1
    } else {
        let first = nums[0]
        if n == first {
            return 0
        } else {
            let middleIndex = (nums.count)/2 - 1
            let middle = nums[middleIndex]
            if n < middle {
                for each in nums.enumerated() where each.offset < middleIndex {
                    if each.element == n {
                        return each.offset
                    }
                }
            } else {
                for each in nums.reversed().enumerated() where each.offset < middleIndex {
                    if each.element == n {
                        return nums.count - each.offset
                    }
                }
            }
        }
        return -1
    }
}
