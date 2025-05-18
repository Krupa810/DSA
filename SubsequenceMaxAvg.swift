/*
 Solution for - https://leetcode.com/problems/maximum-average-subarray-i/description/?envType=study-plan-v2&envId=leetcode-75
 */
//
//  SubsequenceMaxAvg.swift
//  
//
//  Created by Krupali Patel on 5/18/25.
//

class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var windowSum = nums[0..<k].reduce(0, +)
        var maxSum = windowSum
        
        for i in k..<nums.count {
            windowSum = windowSum - nums[i-k] + nums[i]
            maxSum = max(windowSum, maxSum)
        }
        
        return Double(maxSum)/Double(k)
    }
}
