//
//  main.c
//  LinkedList
//
//  Created by 贺嘉炜 on 2018/12/25.
//  Copyright © 2018年 贺嘉炜. All rights reserved.
//

#include <stdio.h>
#include "LinkedList.h"

int main(int argc, const char * argv[]) {
    struct Node *pHead = CreateList();
    AddToTail(&pHead, 200);
    TraverseList(pHead);
    return 0;
}
