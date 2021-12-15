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
        let mid = findMiddleNode(head: head)
        // 翻转右边部分
        var rHead = reverseList(mid?.next)
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
    
    // 找到中间节点
    private func findMiddleNode(head: ListNode?) -> ListNode? {
        var fast = head
        var slow = head
//        while fast.next != nil && fast.next?.next != nil {
//            slow = slow.next ?? nil
//            fast = fast.next?.next
//        }
        return slow
    }
    
    /**
     * 翻转链表
     * - parameter head: 原链表的头结点
     * 比如按原链表是 1->2->3->4->nil 翻转之后是 4->-3->2->1->nil
     * - return: 翻转之后的链表的头结点 (返回4)
     */
    private func reverseList(head: inout ListNode?) -> ListNode? {
        var rHead: ListNode? = nil
        while head?.next != nil {
            head = head?.next
            rHead?.next = head
            head = head?.next
        }
        return rHead
    }
    
    
    /// 是否是回文链表
    func isPalindromeP1(_ head: ListNode?) -> Bool {
        // 空链表算回文列表
        guard let head = head else { return true }
        // 单独节点算回文链表
        guard let nxtNode = head.next else { return true }

        // 只有两个节点判断这俩的值是否相等
        guard nxtNode.next != nil else {  return head.val == nxtNode.val }
        
        // 能来到这里说明最少有3个节点
        let mid = findMiddleNode(head: head)!
        var secondHead = reverseList(head: &mid.next)
        var node: ListNode? = head
        while secondHead != nil {
            guard node?.val == secondHead?.val else {
                return false
            }
            node = node?.next
            secondHead = secondHead?.next
        }
        
        return true
    }
    
    private func reverseList(_ head: ListNode) -> ListNode? {
        guard head.next != nil else { return head }
        // 来到这里证明至少有 两个节点
        var current = head
        var prev: ListNode?
        var next: ListNode?
        while current.next != nil {
            next = current.next!
            prev = current
            current.next = prev
            current = next!
        }
        return current
    }
    
}

func testIsPalindrome() {
    let list = LinkedList.createList( [2, 2] )
    LinkedList.display(list)
    let x = Solution.shared.isPalindromeP1(list)
    print(x)
}

//请判断一个链表是否为回文链表。
//
//示例 1:
//
//输入: 1->2
//输出: false
//示例 2:
//

// 1->2->2->1 -> 1->2->2->1
// 1->2->2->1 -> 1->2->2->1

//输入: 1->2->2->1
//输出: true
//进阶：
//你能否用 O(n) 时间复杂度和 O(1) 空间复杂度解决此题？

