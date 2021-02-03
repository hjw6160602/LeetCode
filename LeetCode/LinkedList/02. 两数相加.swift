//
//  02. 两数相加.swift
//  LinkedList
//
//  Created by SaiDiCaprio on 2021/2/2.
//  Copyright © 2021 saidicaprio. All rights reserved.
//

extension Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let list1 = l1 else {
            return l2
        }
        guard let list2 = l2 else {
            return nil
        }
        
//        let dummyHead = ListNode?
//        while list1.next != nil || list2.next != nil {
//            let sum = list1.val + list2.val
//
//            list1 = l1.next
//            list2 = l2.next
//        }
        return nil
    }
}
