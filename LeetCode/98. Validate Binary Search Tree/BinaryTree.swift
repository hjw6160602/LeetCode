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
    
    func initializeInput(_ input: String) -> [String] {
        var str = input
        str.remove(at: str.startIndex)
        str.remove(at: str.index(before: str.endIndex))
        let parts = str.split(separator: ",")
        var array:[String] = []
        for part in parts {
            var tempStr = String(part)
            tempStr = tempStr.trimmingCharacters(in: .whitespaces)
            array.append(tempStr)
        }
        print(array)
        return array
    }
    
    func generateBinaryTreeFromArray(_ array: [String]) -> TreeNode? {
        let count = array.count
        guard count > 0 else {
            return nil
        }
        var rootIndex = 0
        var queue:[TreeNode] = []
        let value = Int(array[rootIndex])!
        head = TreeNode(value)
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
            let value = Int(item)
            let tempNode = TreeNode(value!)
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
