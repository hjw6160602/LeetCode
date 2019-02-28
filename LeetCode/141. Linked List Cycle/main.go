
package main


//Definition for singly-linked list.
type ListNode struct {
    Val int
    Next *ListNode
}

func main()  {
    head := &ListNode{}
    hasCycle(head)
}

func hasCycle(head *ListNode) bool {
    hare := head
    tortoise := head
    for hare != nil && tortoise != nil && tortoise.Next != nil {
        hare = hare.Next
        tortoise = tortoise.Next.Next
        if hare == tortoise {
            return true
        }
    }
    return false
}
