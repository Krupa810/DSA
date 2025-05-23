/*
 Solution for - https://leetcode.com/problems/valid-parentheses/
 */
//
//  ValidParanthesis.swift
//  
//
//  Created by Krupali Patel on 5/22/25.
//

class Solution {
    func isValid(_ s: String) -> Bool {
        var charString = Array(s)
        var stack = [Character]()
        if charString.count == 0 {
            return true
        }
        var openingBrac: [Character] = ["(", "{", "["]
        for char in charString {
            if openingBrac.contains(char) {
                stack.append(char)
            } else {
                if stack.isEmpty {
                    return false
                }
                let lastChar = stack.last
                switch char {
                case ")":
                    if lastChar != "(" {
                        return false
                    }
                case "}":
                    if lastChar != "{" {
                        return false
                    }
                case "]":
                    if lastChar != "[" {
                        return false
                    }
                default:
                    return false
                }
                stack.removeLast()
            }
        }
        return stack.isEmpty
    }
}
