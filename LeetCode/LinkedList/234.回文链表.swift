//
//  234.回文链表.swift
//  LinkedList
//
//  Created by SaiDiCaprio on 2021/2/3.
//  Copyright © 2021 saidicaprio. All rights reserved.
//
//链接：https://leetcode-cn.com/problems/palindrome-linked-list
//

import Foundation

extension Solution {
    /// 是否是回文链表
    func isPalindrome(_ head: ListNode?) -> Bool {
        guard let head = head,
              head.next != nil else {
            return true
        }
        
        if head.next?.next == nil {
            return (head.val == head.next?.val)
        }
        
        // 找到中间节点
        let mid = findMiddleNode(node: head)
        // 翻转右边部分
        var rHead = reverseList(node: mid?.next)
        var lHead: ListNode? = head
        
        while rHead != nil {
            guard lHead?.val == rHead?.val else {
                return false
            }
            lHead = lHead?.next
            rHead = rHead?.next
        }
        return false
    }
    
    private func findMiddleNode(node: ListNode) -> ListNode? {
        
        return nil
    }
    
    private func reverseList(node: ListNode?) -> ListNode? {
        guard let node = node else {
            return nil
        }
        print(node)
        return nil
    }
}


//请判断一个链表是否为回文链表。
//
//示例 1:
//
//输入: 1->2
//输出: false
//示例 2:
//
//输入: 1->2->2->1
//输出: true
//进阶：
//你能否用 O(n) 时间复杂度和 O(1) 空间复杂度解决此题？

