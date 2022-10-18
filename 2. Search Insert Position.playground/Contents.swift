// Given a sorted array of distinct integers and a target value,
// return the index if the target is found. If not, return the index
// where it would be if it were inserted in order.
//
// You must write an algorithm with O(log n) runtime complexity.

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if nums.isEmpty {
            return -1
        }
        
        let middleIndex = nums.count/2 - 1
        let middle = nums[middleIndex]
    
        if middle == target {
            return middleIndex
        } else if target < middle {
            for (index, num) in nums.enumerated() where index < middleIndex {
                if num == target {
                    return index
                } else if num > target {
                    return index - 1
                }
            }
        } else {
            for (index, num) in nums.reversed().enumerated() where index < middleIndex {
                if num == target {
                    return nums.count - index
                } else if num > target {
                    return index
                }
            }
        }
        return -1
    }
}

Solution().searchInsert([1,3,5,6], 5)
