/*
 Solutions for - https://leetcode.com/problems/reverse-vowels-of-a-string/description/?envType=study-plan-v2&envId=leetcode-75
 */

//
//  ReverseVowelsOfString.swift
//  
//
//  Created by Krupali Patel on 5/17/25.
//

class Solution {
    
    func reverseVowels(_ s: String) -> String {
        var charArray = Array(s)
        var left = 0
        var right = s.count - 1
        
        if s.count == 1 {
            return s
        }
        
        while left < right {
            if !isCharAVowel(charArray, left) {
                left += 1
                continue
            }
            
            if !isCharAVowel(charArray, right) {
                right -= 1
                continue
            }
            
            charArray.swapAt(left, right)
            left += 1
            right -= 1
        }
        return String(charArray)
    }
    
    func isCharAVowel(_ s: Array<Character>, _ index: Int) -> Bool {
        let vowels: [String] = ["a", "e", "i", "o","u"]
        return vowels.contains(String(s[index].lowercased()))
    }
}

Solution().reverseVowels("IceCreAm")

//AceCreIm

