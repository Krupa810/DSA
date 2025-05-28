/*
 Solution for - https://leetcode.com/problems/longest-common-prefix/
 */
//
//  LongestCommonPrefix.swift
//  
//
//  Created by Krupali Patel on 5/28/25.
//

import Foundation
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard let first = strs.first else { return "" }
        var prefix = first

        for strs in strs.dropFirst() {
            while !strs.hasPrefix(prefix) {
                prefix = String(prefix.dropLast())
                if prefix.isEmpty {
                    return ""
                }
            }
        }

        return prefix
    }
}
