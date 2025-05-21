/*
 Solution for - https://leetcode.com/problems/longest-substring-without-repeating-characters/
 */
//
//  LengthOfLongestSequence.swift
//  
//
//  Created by Krupali Patel on 5/20/25.
//

import Foundation
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var left = 0
        var right = 0
        var maxLength = 0
        var arraySet = Array(s)
        var charSet = Set<Character>()
        
        for right in 0..<arraySet.count {
             while charSet.contains(arraySet[right]) {
                charSet.remove(arraySet[left])
                left += 1
            }
            charSet.insert(arraySet[right])
            maxLength = max(maxLength, right - left + 1)
        }
        return maxLength
    }
}
