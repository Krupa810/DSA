/*
 Solution for - https://leetcode.com/problems/two-sum/description/?envType=company&envId=paypal&favoriteSlug=paypal-all
 */
//
//  TwoSum.swift
//  
//
//  Created by Krupali Patel on 5/18/25.
//

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var mapOfDifference = [Int: (Int, Int)]()
        
        for (i,num) in nums.enumerated() {
            let diff = target - num
            if let (val, index) = mapOfDifference[diff] {
                return [index, i]
            }
            mapOfDifference[num] = (target - num, i)
        }
        
        return []
    }
}
