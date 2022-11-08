#include <stdio.h>

#include "line_parser.h"
#include "memory_manage.h"
#include "hash.h"

extern int MAX_WORD_LEN;
extern table t;


int main() {
    init_slabs();
    init_mem();
    init_hash_table();
    char parse_word[MAX_WORD_LEN];
    while(1) {
        scanf("%s", parse_word);
        if (analyse_word(parse_word) == -1) break;
    }
    return 0;
}


