/*
 Solution for - https://leetcode.com/problems/leaf-similar-trees/description/?envType=study-plan-v2&envId=leetcode-75
 */
//
//  LeafSimilarTrees.swift
//  
//
//  Created by Krupali Patel on 5/23/25.
//

class Solution {
    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        var leavesForNode1 = [Int]()
        var leavesForNode2 = [Int]()

        letsCollectLeaves(root1, &leavesForNode1)
        letsCollectLeaves(root2, &leavesForNode2)

        return leavesForNode1 == leavesForNode2
    }

    func letsCollectLeaves(_ node: TreeNode?, _ leaves: inout [Int]) {
        guard let node = node else { return }

        if node.left == nil && node.right == nil {
            leaves.append(node.val)
        }

        letsCollectLeaves(node.left, &leaves)
        letsCollectLeaves(node.right, &leaves)
    }
}
