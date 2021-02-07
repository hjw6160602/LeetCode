//
//  654.最大二叉树.swift
//  BinaryTree
//
//  Created by SaiDiCaprio on 2021/2/5.
//  Copyright © 2021 saidicaprio. All rights reserved.
//
//  链接：https://leetcode-cn.com/problems/maximum-binary-tree

// 给定一个不含重复元素的整数数组 nums 。一个以此数组直接递归构建的 最大二叉树 定义如下：
//
// 二叉树的根是数组 nums 中的最大元素。
// 左子树是通过数组中 最大值左边部分 递归构造出的最大二叉树。
// 右子树是通过数组中 最大值右边部分 递归构造出的最大二叉树。
// 返回有给定数组 nums 构建的 最大二叉树
//

// 提示：
//
// 1 <= nums.length <= 1000
// 0 <= nums[i] <= 1000
// nums 中的所有整数 互不相同
//
extension Solution {
    // 构造 最大二叉树
    func constructMaximumBinaryTree(_ nums: [Int]) -> TreeNode? {
        guard nums.count > 0 else {
            return nil
        }
        return findRoot(nums: nums, l: 0, r: nums.count)
    }
    
    // 划分子树
    private func findRoot(nums: [Int], l: Int, r: Int) -> TreeNode? {
        if l == r {
            return nil
        }
        // 找出 [l, r) 范围捏最大值的索引
        var maxIdx = l
        for i in (l + 1)..<r {
            if nums[i] > nums[maxIdx] {
                maxIdx = i
            }
        }
        let root = TreeNode(nums[maxIdx])
        
        root.left = findRoot(nums: nums, l: l, r: maxIdx)
        root.right = findRoot(nums: nums, l: maxIdx + 1, r: r)
        return root
    }
}

// 输入：nums = [3,2,1,6,0,5]
//
// 输出：[6,3,5,null,2,0,null,null,1]
//
// 解释：递归调用如下所示：
// - [3,2,1,6,0,5] 中的最大值是 6 ，左边部分是 [3,2,1] ，右边部分是 [0,5] 。
//     - [3,2,1] 中的最大值是 3 ，左边部分是 [] ，右边部分是 [2,1] 。
//         - 空数组，无子节点。
//         - [2,1] 中的最大值是 2 ，左边部分是 [] ，右边部分是 [1] 。
//             - 空数组，无子节点。
//             - 只有一个元素，所以子节点是一个值为 1 的节点。
//     - [0,5] 中的最大值是 5 ，左边部分是 [0] ，右边部分是 [] 。
//         - 只有一个元素，所以子节点是一个值为 0 的节点。
//         - 空数组，无子节点。

// 输入：nums = [3,2,1]
// 输出：[3,null,2,null,1]
//
//


