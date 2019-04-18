//  https://leetcode.com/problems/validate-binary-search-tree/
//  main.swift
//  98. Validate Binary Search Tree
//
//  Created by saidicaprio on 2019/4/17.
//  Copyright © 2019 saidicaprio. All rights reserved.
//

//Given a binary tree, determine if it is a valid binary search tree (BST).
//
//Assume a BST is defined as follows:
//
//The left subtree of a node contains only nodes with keys less than the node's key.
//The right subtree of a node contains only nodes with keys greater than the node's key.
//Both the left and right subtrees must also be binary search trees.

import Foundation
/**
 * input: [2,1,3]
 * [5, 1, 4, null, null, 3, 6]
 */

class Solution {
    func isValidBST(_ root: TreeNode?) -> Bool {
        return _helper(root, nil, nil)
    }
    
    private func _helper(_ node: TreeNode?, _ min: Int?, _ max: Int?) -> Bool {
        guard let node = node else {
            return true
        }
        
        if let min = min, node.val <= min {
            return false
        }
        
        if let max = max, node.val >= max {
            return false
        }
        
        return _helper(node.left, min, node.val) && _helper(node.right, node.val, max)
    }
}

let tree = BinaryTree()
//let array = tree.initializeInput("[5, 1, 4, null, null, 3, 6]")
let array = tree.initializeInput("[2,1,3]")
let root = tree.generateBinaryTreeFromArray(array)

let solution = Solution()
print(solution.isValidBST(root))
