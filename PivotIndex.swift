/*
 Solution for - https://leetcode.com/problems/find-pivot-index/description/?envType=study-plan-v2&envId=leetcode-75
 */
//
//  PivotIndex.swift
//  
//
//  Created by Krupali Patel on 5/28/25.
//

import Foundation
class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        var totalSum = nums.reduce(0, +)
        var leftSum = 0
        for (i, num) in nums.enumerated() {
            var rightSum = totalSum - leftSum - num
            if leftSum == rightSum {
                return i
            }
            leftSum += num
        }
        return -1
    }
}
