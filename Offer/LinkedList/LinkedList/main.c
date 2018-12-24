//
//  main.c
//  LinkedList
//
//  Created by 贺嘉炜 on 2018/12/25.
//  Copyright © 2018年 贺嘉炜. All rights reserved.
//

#include <stdio.h>

//    定义链表中的节点
typedef struct node
{
    int member;                //    节点中的成员
    struct node *pNext;        //    指向下一个节点的指针
}Node,*pNode;


void AddToTail(ListNode **pHead, int value) {
    node.value = value;
    node.next = NULL;
    Node *pNew = node;
    if(*pHead == NULL) {
        pHead = pNew;
    } else {
        Node *pNode = *pHead;
        while(*pHead != NULL) {
            pNode = pNode->next;
        }
        pNode = pNew;
    }
}

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    return 0;
}
