//
//  113.路径总和.swift
//  BinaryTree
//
//  Created by SaiDiCaprio on 2021/2/25.
//  Copyright © 2021 saidicaprio. All rights reserved.
//  https://leetcode-cn.com/problems/path-sum-ii

import Foundation

extension Solution {
    func pathSum(_ root: TreeNode?, _ targetSum: Int) -> [[Int]] {
        return [[0]]
    }
}

//给定一个二叉树和一个目标和，找到所有从根节点到叶子节点路径总和等于给定目标和的路径。
//说明: 叶子节点是指没有子节点的节点。

//示例:
//给定如下二叉树，以及目标和 sum = 22，

//        5
//       / \
//      4   8
//     /   / \
//    11  13  4
//   /  \    / \
//  7    2  5   1

//[
//   [5,4,11,2],
//   [5,8,4,5]
//]
