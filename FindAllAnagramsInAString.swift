/*
 Solution for - https://leetcode.com/problems/find-all-anagrams-in-a-string/description/
 */
//
//  FindAllAnagramsInAString.swift
//  
//
//  Created by Krupali Patel on 5/20/25.
//

class Solution {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        var result = [Int]()
        var ca_s = Array(s)
        var ca_p = Array(p)
        var pFreq = [Character: Int]()
        var wordFreq = [Character: Int]()
        
        if s.count < p.count { return result }
        for p in ca_p {
            pFreq[p, default: 0] += 1
        }
        
        for i in 0..<s.count {
            wordFreq[ca_s[i], default: 0] += 1
            if i >= p.count {
                let charToRemove = ca_s[i-p.count]
                wordFreq[charToRemove]! -= 1
                if wordFreq[charToRemove] == 0 {
                    wordFreq.removeValue(forKey: charToRemove)
                }
            }
            
            if wordFreq == pFreq {
                result.append(i-p.count+1)
            }
        }
        
        return result
    }
}
