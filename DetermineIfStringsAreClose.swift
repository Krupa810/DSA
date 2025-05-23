/*
 Solution for - https://leetcode.com/problems/determine-if-two-strings-are-close/description/?envType=study-plan-v2&envId=leetcode-75
 */
//
//  DetermineIfStringsAreClose.swift
//  
//
//  Created by Krupali Patel on 5/22/25.
//

class Solution {
    func populateMyBeautifulMap(_ word: String, _ mapToPopulate: inout [Character: Int]) {
        for char in word {
            mapToPopulate[char, default: 0] += 1
        }
    }
    
    func closeStrings(_ word1: String, _ word2: String) -> Bool {
        var freq1Map = [Character: Int]()
        var freq2Map = [Character: Int]()
        
        populateMyBeautifulMap(word1, &freq1Map)
        populateMyBeautifulMap(word2, &freq2Map)
        
        if Set(freq1Map.keys) != Set(freq2Map.keys) {
            return false
        }
        if freq1Map.values.sorted() != freq2Map.values.sorted() {
            return false
        }
        return true
    }
}
