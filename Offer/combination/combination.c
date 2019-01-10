//
//  combination.c
//  combination
//
//  Created by saidicaprio on 2019/1/10.
//  Copyright © 2019 saidicaprio. All rights reserved.
//

#include "combination.h"

int array[] = {1,2,3,4};

int results[N] = {0}; //保存已经找到的结果前缀数组
int results_end = 0; //结果前缀数组有效数据下标
int is_used[N] = {0}; //是否已经排列过了的标志

void comb(int deep, int n, int m) {
    int i = 0;
    if (deep > n) // 越界递归结束
        return ;
    if (results_end == m) {
        // 找到结果，打印，递归结束
        printf("[");
        for (i = 0; i < m; i++) {
            printf("%d", results[i]);
            if (i != m-1) {
                printf(", ");
            }
        }
        printf("]");
        printf("\n");
        return ;
    }
    results[results_end++] = array[deep];
    comb(deep+1, n, m); //向下一级递归
    results_end--;
    comb(deep+1, n, m); //向下一级递归
}
