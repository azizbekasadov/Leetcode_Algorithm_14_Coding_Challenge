// Given an array of integers nums which is sorted in ascending order,
// and an integer target, write a function to search target in nums.
// If target exists, then return its index. Otherwise, return -1.
//
// You must write an algorithm with O(log n) runtime complexity.

import os.log

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var result = -1
        for (index, num) in nums.enumerated() {
            if num == target {
                result = index
            }
        }
        
        return result
    }
}

let solution = Solution()
os_log("%d", solution.search([-1,0,3,5,9,12], 5))
