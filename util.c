//
// Created by BOYILIU on 11/8/22.
//

#include "stdio.h"
#include "stdlib.h"
void die(const char *reason)
{
    fprintf(stderr, "%s\n", reason);
    exit(EXIT_FAILURE);
}
