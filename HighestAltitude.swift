/*
 Solution for https://leetcode.com/problems/find-the-highest-altitude/?envType=study-plan-v2&envId=leetcode-75
 */
//
//  HighestAltitude.swift
//  
//
//  Created by Krupali Patel on 5/22/25.
//

import Foundation
class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var maxAltitude = 0
        var currentAltitude = 0
        
        for g in gain {
            currentAltitude += g
            maxAltitude = max(currentAltitude, maxAltitude)
        }
        return maxAltitude
    }
}
