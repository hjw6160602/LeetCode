//
//  main.c
//  Fibonacci
//
//  Created by saidicaprio on 2019/1/12.
//  Copyright © 2019 saidicaprio. All rights reserved.
//


#include "Fibonacci.h"

int main(int argc, const char * argv[]) {
    for (int i = 0; i < 100; i++) {
        printf("%d, ", fib(i));
    }
    return 0;
}
