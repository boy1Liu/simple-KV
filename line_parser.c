//
// Created by BOYILIU on 11/2/22.
//
#include <string.h>
#include <stdio.h>
#include "kv_interface.h"
#include "line_parser.h"

const int MAX_WORD_LEN = (1 << 5);

static char *set_word = "set";
static char *get_word = "get";
static char *quit_word = "quit";

static char set_key[MAX_WORD_LEN];
static char set_value[MAX_WORD_LEN];
static char get_key[MAX_WORD_LEN];

int analyse_word(char *word) {
    if(strcmp(word, set_word) == 0) {
        scanf("%s", set_key);
        scanf("%s", set_value);
        kv_set(strdup(set_key), strdup(set_value));
        return 0;
    } else if (strcmp(word, get_word) == 0) {
        scanf("%s", get_key);
        kv_get(strdup(get_key));
        return 0;
    } else if(strcmp(word, quit_word) == 0) {
        return -1;
    } else {
        printf("no such instruction\n");
        return 0;
    }
}