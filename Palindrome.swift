/*
 Solution for - https://leetcode.com/problems/valid-palindrome/description/?envType=company&envId=paypal&favoriteSlug=paypal-all
 */
//
//  Palindrome.swift
//  
//
//  Created by Krupali Patel on 5/18/25.
//

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var charArray = Array(s.lowercased().filter {
            $0.isLetter || $0.isNumber
        })
        
        if charArray.isEmpty {
            return true
        }
        
        var left = 0
        var right = charArray.count - 1
        
        while left < right {
            if charArray[left] != charArray[right] {
                return false
            }
            left += 1
            right -= 1
        }
        return true
    }
}
