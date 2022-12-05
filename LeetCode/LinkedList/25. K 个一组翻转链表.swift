//
//  25. K 个一组翻转链表.swift
//  LinkedList
//
//  Created by SaiDiCaprio on 2022/12/5.
//  Copyright © 2022 saidicaprio. All rights reserved.
//  https://leetcode.cn/problems/reverse-nodes-in-k-group/

import Foundation

extension Solution {
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        return nil
    }
    
    func reverse(_ a: ListNode?, _ b: ListNode) -> ListNode? {

        var cur = a
        var nxt = a
        var pre: ListNode?
        
        while cur?.next?.val != b.val {
            nxt = cur?.next
            cur?.next = pre
            pre = cur
            cur = nxt
        }
        return pre
    }
}


//给你链表的头节点 head ，每 k 个节点一组进行翻转，请你返回修改后的链表。
//
//k 是一个正整数，它的值小于或等于链表的长度。如果节点总数不是 k 的整数倍，那么请将最后剩余的节点保持原有顺序。
//
//你不能只是单纯的改变节点内部的值，而是需要实际进行节点交换。
