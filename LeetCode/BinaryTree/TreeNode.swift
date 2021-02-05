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
    /// 节点的值
    public var val: Int
    /// 左子数头结点
    public var left: TreeNode?
    /// 右子数头结点
    public var right: TreeNode?
    /// 是否访问过该节点
    public var visited: Bool = false
    
    public var neighbors: [TreeNode] {
        var queue = [TreeNode]()
        if let left = self.left {
            queue.append(left)
        }
        if let right = self.right {
            queue.append(right)
        }
        return queue
    }
    
    public init() {
        self.val = 0
        self.left = nil
        self.right = nil
    }
    
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
    
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
    
}

