//
//  108.将有序数组转为BST.swift
//  BinaryTree
//
//  Created by SaiDiCaprio on 2021/3/24.
//  Copyright © 2021 saidicaprio. All rights reserved.
//  https://leetcode-cn.com/problems/convert-sorted-array-to-binary-search-tree

import Foundation

// 请你将其转换为一棵 高度平衡 二叉搜索树
extension Solution {
    // 高度平衡 二叉树是一棵满足「每个节点的左右两个子树的高度差的绝对值不超过 1 」的二叉树
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        guard nums.count > 0 else { return nil }

        return sortedArrayToBST(nums, 0, nums.count - 1)
    }
    /// 二分搜索 递归的方式来构建BST
    private func sortedArrayToBST(_ nums: [Int], _ leftIdx: Int, _ rightIdx: Int) -> TreeNode? {
        guard leftIdx <= rightIdx else {
            return nil
        }
        // 取左右idx的中间mid下标
        let mid = (rightIdx - leftIdx) / 2 + leftIdx
        let root = TreeNode(nums[mid])
        
        root.left = sortedArrayToBST(nums, leftIdx, mid - 1)
        root.right = sortedArrayToBST(nums, mid + 1, rightIdx)
        
        return root
    }
    
    //        for i in 0..<nums.count {
    //            let node = TreeNode.init(nums[i])
    //            insertNode(node: node)
    //        }
//    private func insertNode(node: TreeNode?) {
//
//    }
}

func testSortedArrayToBST() {
    let root = LeetCode.sortedArrayToBST([-10,-3,0,5,9])
    print(root)
}

//给你一个整数数组 nums ，其中元素已经按 升序 排列，。

//示例 1：
//输入：nums = [-10,-3,0,5,9]
//输出：[0,-3,9,-10,null,5]
//解释：[0,-10,5,null,-3,null,9] 也将被视为正确答案：

//示例 2：
//输入：nums = [1,3]
//输出：[3,1]
//解释：[1,3] 和 [3,1] 都是高度平衡二叉搜索树。
