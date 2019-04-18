//
//  TreeNode.swift
//  98. Validate Binary Search Tree
//
//  Created by saidicaprio on 2019/4/17.
//  Copyright © 2019 saidicaprio. All rights reserved.
//

/*
输入:
    5
   / \
  1   4
     / \
    3   6
输出: false
解释: 输入为: [5,1,4,null,null,3,6]
根节点的值为5 ，但是其右子节点值为4
*/

//Definition for a binary tree node.
public class TreeNode {
    public var val: Int?
    public var left: TreeNode?
    public var right: TreeNode?
//    public init(_ val: Int) {
//        self.val = val
//        self.left = nil
//        self.right = nil
//    }
}

