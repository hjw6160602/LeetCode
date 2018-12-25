//
//  LinkedList.c
//  LinkedList
//
//  Created by 贺嘉炜 on 2018/12/25.
//  Copyright © 2018年 贺嘉炜. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

#include "LinkedList.h"

//    创建链表函数
struct Node* CreateList()  {
    struct Node *pHead, *pTail;
    // 分配一个不存放有效数据的头结点
    pHead = pTail = (struct Node*)malloc(sizeof(struct Node));
    
    pTail->pNext = NULL; // 最后一个节点的指针置为空
    //    printf("请输入节点个数：");
    //    scanf("%d",&len);
    int len = 100;
    for(int i = 0; i < len; i++) {
        //        printf("第 %d 个节点的数值：",i+1);
        //        scanf("%d",&val);
        int val = 100 + i;
        struct Node *pNew = (struct Node*)malloc(sizeof(struct Node));    // 为节点分配空间
        pNew->value = val;      // 将用户输入的数据赋给节点的成员
        pTail->pNext = pNew;    // 将最后一个节点的指针指向下一个新的节点
        pNew->pNext = NULL;     // 将新节点中的指针置为空
        pTail = pNew;           // 将新节点赋给最后的一个节点
    }
    return pHead; //返回头节点
}

//    遍历链表函数
void TraverseList(struct Node *pHead) {
    struct Node *p = pHead->pNext; // 将头节点的指针给予临时节点p
    while(NULL != p) {
        printf("%d",p->value);
        p = p->pNext;
        if (NULL != p) {
            printf(" -> ");
        }
    }
    printf("\n");
    return ;
}

bool InsertNode(struct Node* pHead, int index, int value) {
    if (index < 0 || NULL == pHead) {
        return false;
    }
    int i = 0;
    struct Node *pNode = pHead;
    while (NULL != pNode) {
        if (NULL == pNode->pNext && i == index) {
            struct Node* pNew = (struct Node*)malloc(sizeof(struct Node*));
            printf("111111111");
            pNew->value = value;
            pNew->pNext = NULL;
            pNode->pNext = pNew;
            return true;
        }
        pNode = pNode->pNext;
        if (i == index) {
            printf("222222222");
            struct Node* pNew = (struct Node*)malloc(sizeof(struct Node*));
            pNew->value = value;
            pNew->pNext = pNode->pNext;
            pNode->pNext = pNew;
            return true;
        }
        i++;
    }
    return false;
}

void AddToTail(struct Node **pHead, int value) {
    struct Node *pNew = (struct Node*)malloc(sizeof(struct Node));
    pNew->value = value;
    pNew->pNext = NULL;
    if(*pHead == NULL) {
        *pHead = pNew;
    } else {
        struct Node *pNode = *pHead;
        while(pNode->pNext != NULL) {
            pNode = pNode->pNext;
        }
        pNode->pNext = pNew;
    }
}
