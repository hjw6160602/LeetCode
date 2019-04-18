//
//  BinaryTree.swift
//  98. Validate Binary Search Tree
//
//  Created by saidicaprio on 2019/4/17.
//  Copyright © 2019 saidicaprio. All rights reserved.
//

import Foundation

class BinaryTree {
    
    var head: TreeNode?
    
    func generateBinaryTreeFromArray(_ array: [String]) -> TreeNode? {
        let count = array.count
        guard count > 0 else {
            return nil
        }
        var rootIndex = 0
        var queue:[TreeNode] = []
        head = TreeNode()
        head!.val = Int(array[rootIndex])
        queue.append(head!)
        while true {
            var nextLayerQueue:[TreeNode] = []
            for node in queue {
                guard createNode(rootIndex: &rootIndex, isLeft: true, node: node, nextLayerQueue: &nextLayerQueue, count: count) else {
                    return head
                }

                guard createNode(rootIndex: &rootIndex, isLeft: false, node: node, nextLayerQueue: &nextLayerQueue, count: count) else {
                    return head
                }
            }
            queue = nextLayerQueue
        }
    }
    
    private func createNode(rootIndex: inout Int, isLeft: Bool, node: TreeNode, nextLayerQueue: inout [TreeNode], count: Int) -> Bool {
        rootIndex += 1
        guard rootIndex < count else {
            return false
        }
        let item = array[rootIndex]
        if item == "null" {
            if isLeft {
                node.left = nil
            } else {
                node.right = nil
            }
        } else {
            let tempNode = TreeNode()
            tempNode.val = Int(item)
            nextLayerQueue.append(tempNode)
            if isLeft {
                node.left = tempNode
            } else {
                node.right = tempNode
            }
        }
        return true
    }
}
