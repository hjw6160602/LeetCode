//
//  ListNode.swift
//  LinkedList
//
//  Created by SaiDiCaprio on 2021/2/2.
//  Copyright © 2021 saidicaprio. All rights reserved.
//

class ListNode {
    ///
    var val: Int
    ///
    var next: ListNode?
    
     init() {
        self.val = 0
        self.next = nil
    }
    
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}

struct LinkedList {
    /// 通过数组 创建一个链表
    static func createList(_ list: [Int]) -> ListNode? {
        guard list.count > 0 else {
            return nil
        }
        let header = ListNode()
        var interator = header
        for value in list {
            let node = ListNode(value)
            interator.next = node
            interator = node
        }
        return header.next
    }
    
    static func display(_ head: ListNode?) {
        guard let head = head else {
            return
        }
        var node = head
        while node.next != nil {
            print("\(node.val)->", terminator: "")
            node = node.next!
        }
        print("\(node.val)->", terminator: "")
        print("NULL")
    }
    
}


