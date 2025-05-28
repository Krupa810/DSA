/*
 Solution for https://leetcode.com/problems/n-th-tribonacci-number/description/?envType=study-plan-v2&envId=leetcode-75
 */
//
//  NthTribonacciNumber.swift
//  
//
//  Created by Krupali Patel on 5/28/25.
//

import Foundation
class Solution {
    var map = [Int: Int]()

    func tribonacci(_ n: Int) -> Int {
        if n == 0 { return 0 }
        if n == 1 || n == 2 { return 1 }

        if let val = map[n] {
            return val
        }

        let result = tribonacci(n - 1) + tribonacci(n - 2) + tribonacci(n - 3)
        map[n] = result
        return result
    }
}
