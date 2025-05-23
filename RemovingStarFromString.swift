/*
 Solution for - https://leetcode.com/problems/removing-stars-from-a-string/description/?envType=study-plan-v2&envId=leetcode-75
 */
//
//  RemovingStarFromString.swift
//  
//
//  Created by Krupali Patel on 5/22/25.
//

class Solution {
    func removeStars(_ s: String) -> String {
        var charString = Array(s)
        var stack = [Character]()
        
        for char in charString {
            if char != "*" {
                stack.append(char)
            } else {
                if stack.isEmpty {
                    continue
                }
                stack.removeLast()
            }
        }
        return String(stack)
    }
}

