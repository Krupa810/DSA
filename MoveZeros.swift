/*
 Solution for - https://leetcode.com/problems/move-zeroes/description/?envType=study-plan-v2&envId=leetcode-75
 */
//
//  MoveZeros.swift
//  
//
//  Created by Krupali Patel on 5/18/25.
//

class Solution {
    func moveZeroes(_ nums: [Int]) -> [Int] {
        var lastNonZeroIndex = 0
        var nums = nums
        for currentIndex in 0..<nums.count {
            if nums[currentIndex] != 0 {
                nums.swapAt(lastNonZeroIndex, currentIndex)
                lastNonZeroIndex += 1
            }
        }
        return nums
    }
}
