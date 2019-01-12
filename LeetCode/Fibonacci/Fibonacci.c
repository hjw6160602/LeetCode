//
//  Fibonacci.c
//  Fibonacci
//
//  Created by saidicaprio on 2019/1/12.
//  Copyright © 2019 saidicaprio. All rights reserved.
//

#include "Fibonacci.h"

int fib(int n) {
    int sum = 0;
    if (n == 0) {
        return 0;
    } else if (n == 1) {
        return 1;
    } else {
        sum = fib(n-1) + fib(n-2);
    }
    return sum;
}
