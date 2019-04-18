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
//        let array: [String] = ["5", "1", "4", "null", "null", "3", "6"]
//        let node = TreeNode.generateBinaryTreeFromArray(array)
//        print(node!)
        return true
    }
}

//let array: [String] = ["5", "1", "4", "null", "null", "3", "6", "1", "2"]

let tree = BinaryTree()
let array = tree.initializeInput("[5, 1, 4, null, null, 3, 6, 1, 2]")
let head = tree.generateBinaryTreeFromArray(array)

print(head)
