//
//  534.二叉树的直径.swift
//  BinaryTree
//
//  Created by SaiDiCaprio on 2021/3/19.
//  Copyright © 2021 saidicaprio. All rights reserved.
//  https://leetcode-cn.com/problems/diameter-of-binary-tree

import Foundation

// 错误的解法 最大深度 不一定是 左子树和右子树最大深度之和，有可能在子树当中
extension Solution {
    // 给定一棵二叉树，你需要计算它的直径长度
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        
        let left = _maxDepth(root.left)
        let right = _maxDepth(root.right)
        // 二叉树的直径 等于 左子树的高度 + 右子树的高度 + 1
        return left + right
    }
    
    
    // 深度优先搜索 算出最大深度 maxDepth = max(left, right)
    private func _maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0}
        let lDepth = _maxDepth(root.left) + 1
        let rDepth = _maxDepth(root.right) + 1
        let depth = max(lDepth, rDepth)
        return depth
    }
}

class DiameterOfBinaryTree {
    var diameter = 0
    
    // 二叉树的直径 = max(左子树直径,右子树直径,过根节点的情况)
    // 过根节点时的直径 = 左子树深度 + 右子树深度
    // 一个节点的深度 = max(左子树深度, 右子树深度) + 1
    
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        let _ = deepth(root)
        return diameter
    }
    
    // 求深度的同时可以记录当前直径最大值
    func deepth(_ root:TreeNode?) -> Int {
        guard let node = root else { return 0 }
        
        let leftDeepth = deepth(node.left)
        let rightDeepth = deepth(node.right)
        
        diameter = max(diameter, leftDeepth + rightDeepth)
        return max(leftDeepth, rightDeepth) + 1
    }
}


//         4
//       /   \
//      -7    -3
//          /   \
//         -9   -3
//        / \   /
//       9  -7 -4
//      /   / \
//     6   -6 -6
//    / \  /   /
//   0  6  5  9
//   \  /    /
//   -1 -4  -2


func testDiameterOfBinaryTree() {
    let tree = BinaryTree()
    let array = tree.initializeInput("[4,-7,-3,null,null,-9,-3,9,-7,-4,null,6,null,-6,-6,null,null,0,6,5,null,9,null,null,-1,-4,null,null,null,-2]")
//    let array = tree.initializeInput("[1,2,3,4,5]")
    let root = tree.initWithArray(array)
    
    let d = DiameterOfBinaryTree()
    let length = d.diameterOfBinaryTree(root)
//    let length = LeetCode.diameterOfBinaryTree(root)
    print(length)
}


// 一棵二叉树的直径长度是任意两个结点路径长度中的最大值
// 这条路径可能穿过也可能不穿过根结点

// 示例 :
// 给定二叉树
//     1
//    / \
//   2   3
//  / \
// 4   5
// 返回 3, 它的长度是路径 [4,2,1,3] 或者 [5,2,1,3]。
// 注意：两结点之间的路径长度是以它们之间边的数目表示
 
