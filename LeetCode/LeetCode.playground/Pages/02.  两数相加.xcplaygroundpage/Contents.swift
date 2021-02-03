//: [Previous](@previous)

class ListNode {
    ///
    public var val: Int
    ///
    public var next: ListNode?
    
    public init() {
        self.val = 0
        self.next = nil
    }
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}

class Solution {
    
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let list1 = l1 else {
            return l2
        }
        guard let list2 = l2 else {
            return nil
        }
        
        let dummyHead = ListNode?
        while list1.next != nil || list2.next != nil {
            let sum = list1.val + list2.val
            
            list1 = l1.next
            list2 = l2.next
        }

    }
    
}
