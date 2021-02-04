//
//  206.翻转链表.swift
//  LinkedList
//
//  Created by SaiDiCaprio on 2021/2/4.
//  Copyright © 2021 saidicaprio. All rights reserved.
//

import Foundation

extension Solution {
    func createList(_ head: ListNode?) {
        if let head = head {
            var iterator = head
            for item in 1..<100 {
                let node = ListNode(item)
                iterator.next = node
                iterator = node
            }
        }
    }
    
//    func reverseList(_ head: ListNode?) -> ListNode? {
//        guard head != nil else {
//            return nil
//        }
//        var curNode = head!
//        var prvNode: ListNode? = nil
//        while curNode.next != nil {
////            let nxtNode = curNode.next!
////            curNode.next = prvNode
////            prvNode = curNode
////            curNode = nxtNode
//            (curNode.next, prvNode, curNode) = (prvNode, curNode, curNode.next!)
//        }
//        curNode.next = prvNode
//        return curNode
//    }
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        var rHead: ListNode? = nil
        var current = head
        while current != nil {
            (current!.next, rHead, current) = (rHead, current, current?.next)
        }
        return rHead
    }
    
}

//var head = ListNode(0)
//let solution = Solution()
//solution.createList(head)
//solution.display(head)
//let reversedHead = solution.reverseList(head)
//solution.display(reversedHead)
