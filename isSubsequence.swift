/*
 Solution for - https://leetcode.com/problems/is-subsequence/description/?envType=study-plan-v2&envId=leetcode-75
 */
//
//  isSubsequence.swift
//  
//
//  Created by Krupali Patel on 5/28/25.
//

import Foundation
class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        if s.isEmpty { return true }
        if t.isEmpty { return false }

        var sPointer = 0
        let arr_t = Array(t)
        let arr_s = Array(s)

        for i in 0..<arr_t.count {
            if arr_s[sPointer] == arr_t[i] {
                sPointer += 1
                if sPointer == arr_s.count {
                    return true
                }

            }
        }

        return false
    }
}
