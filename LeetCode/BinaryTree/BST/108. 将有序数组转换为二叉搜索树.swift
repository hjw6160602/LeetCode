//
//  108. 将有序数组转换为二叉搜索树.swift
//  BinaryTree
//
//  Created by 贺嘉炜 on 2022/7/30.
//  Copyright © 2022 saidicaprio. All rights reserved.
//  https://leetcode.cn/problems/convert-sorted-array-to-binary-search-tree

import Foundation

extension Solution {
//    16 ms 65.65%
//    14.5 MB 77.86%
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        let root = dfs(nums, 0, nums.count - 1)
        return root
    }
    
    func dfs(_ nums: [Int], _ left: Int, _ right: Int) -> TreeNode? {
        /// 二分搜索 递归的方式来构建BST
        guard left <= right else {
            // 注意这里是 <= 如果写 < 会最后导致叶子节点添加不上去
            return nil
        }
        let mid = (left + right) >> 1
        let node = TreeNode()
        node.val = nums[mid]
        node.left = dfs(nums, left, mid - 1)
        node.right = dfs(nums, mid + 1, right)
        return node
    }
}

func test108SortedArrayToBST() {
    let nums = [-10,-3,0,5,9]
    let root = LeetCode.sortedArrayToBST(nums)
    print(root)
}

//给你一个整数数组 nums ，其中元素已经按 升序 排列，请你将其转换为一棵 高度平衡 二叉搜索树。
//高度平衡 二叉树是一棵满足「每个节点的左右两个子树的高度差的绝对值不超过 1 」的二叉树。
//
//示例 1：
//输入：nums = [-10,-3,0,5,9]
//输出：[0,-3,9,-10,null,5]
//解释：[0,-10,5,null,-3,null,9] 也将被视为正确答案：
//
//示例 2：
//输入：nums = [1,3]
//输出：[3,1]
//解释：[1,null,3] 和 [3,1] 都是高度平衡二叉搜索树。
//
//提示：
//1 <= nums.length <= 104
//-104 <= nums[i] <= 104
//nums 按 严格递增 顺序排列
