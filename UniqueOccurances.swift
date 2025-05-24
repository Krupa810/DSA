/*
 Solution for - https://leetcode.com/problems/unique-number-of-occurrences/description/?envType=study-plan-v2&envId=leetcode-75
 */
//
//  UniqueOccurances.swift
//  
//
//  Created by Krupali Patel on 5/23/25.
//

class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var hashMap = [Int: Int]()
        for i in arr {
            hashMap[i, default: 0] += 1
        }

        let uniqueOccurrences = Array(hashMap.values)
        return Set(uniqueOccurrences).count == uniqueOccurrences.count
    }
}
