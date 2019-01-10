//
//  main.c
//  combination
//
//  Created by saidicaprio on 2019/1/10.
//  Copyright © 2019 saidicaprio. All rights reserved.
//

#include "combination.h"

int main(int argc, const char * argv[]) {
    
    for(int i = 1; i <= N; i++) {
        comb(0, N, i);
    }
    return 0;
}
