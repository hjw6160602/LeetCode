//
//  main.c
//  LinkedList
//
//  Created by 贺嘉炜 on 2018/12/25.
//  Copyright © 2018年 贺嘉炜. All rights reserved.
//

#include <stdio.h>

//    定义链表中的节点
struct Node {
    int value;                //    节点中的成员
    struct Node *pNext;        //    指向下一个节点的指针
};

void AddToTail(struct Node **pHead, int value) {
    struct Node *node;
    node->value = value;
    node->pNext = NULL;
    struct Node *pNew = node;
    if(*pHead == NULL) {
        pHead = &pNew;
    } else {
        struct Node *pNode = *pHead;
        while(*pHead != NULL) {
            pNode = pNode->pNext;
        }
        pNode = pNew;
    }
}

int main(int argc, const char * argv[]) {
    // insert code here...
    printf("Hello, World!\n");
    return 0;
}
