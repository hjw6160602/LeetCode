#include <stdio.h>
#include <stdlib.h>  

//    定义链表中的节点  
typedef struct node  
{  
    int member;                //    节点中的成员  
    struct node *pNext;        //    指向下一个节点的指针  
}Node,*pNode;  

//    函数声明  
pNode CreateList();                 //  创建链表函数  
void TraverseList(pNode);            //  遍历链表函数  
bool Insert_Node(pNode ,int ,int);    //    链表节点插入函数,第一个参数是头节点，第二个参数是要在第几个节点前插入，第三个参数是要插入的数据  
int Del_Node(pNode,int );        //    删除链表节点,第一个参数是头节点，第二个参数是删除第几个节点，第三个作为

// void AddToTail(ListNode **pHead, int value) {
//     node.value = value;
//     node.next = NULL;
    // Node *pNew = node;
    // if(*pHead == NULL) {
    //     pHead = pNew;
    // } else {
    //     Node *pNode = *pHead;
    //     while(*pHead != NULL) {
    //         pNode = pNode->next;
    //     }
    //     pNode = pNew;
    // }
// }

//    创建链表函数  
pNode CreateList()  {  
    int i;                                            //    用于下面循环  
    int len;                                        //    用来存放有效节点的字数  
    int val;                                        //    用于临时存放用户输入的数据  
    pNode pHead = (pNode)malloc(sizeof(Node));        //  分配一个不存放有效数据的头结点  
    pNode pTail = pHead;                            //    链表的最后一个节点  
    pTail->pNext = NULL;                            //    最后一个节点的指针置为空  
    printf("请输入节点个数：");  
    scanf("%d",&len);  
    for(i = 0; i < len; i++)  
    {  
        printf("第 %d 个节点的数值：",i+1);  
        scanf("%d",&val);  
        pNode pNew = (pNode)malloc(sizeof(Node));    //    为节点分配空间  
        pNew->member = val;                            //将用户输入的数据赋给节点的成员  
        pTail->pNext = pNew;                        //将最后一个节点的指针指向下一个新的节点  
        pNew->pNext = NULL;                            //将新节点中的指针置为空  
        pTail = pNew;                                //将新节点赋给最后的一个节点  
    }  
    return pHead;                                    //返回头节点  
}  
  

int main(int argc, char const *argv[])
{
    // node.value = 10;
    // node.next = NULL;
    /* code */
    return 0;
}
