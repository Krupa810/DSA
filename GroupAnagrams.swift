//Solution for question
//https://leetcode.com/problems/group-anagrams/?envType=company&envId=paypal&favoriteSlug=paypal-three-months
//
//  GroupAnagrams.swift
//  
//
//  Created by Krupali Patel on 5/17/25.
//

class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var anagramMap = [String: [String]]()

        for str in strs {
            let sortedKey = String(str.sorted())
            anagramMap[sortedKey, default: []].append(str)
        }

        return Array(anagramMap.values)
    }
}


Solution().groupAnagrams(["eat","tea","tan","ate","nat","bat"])

