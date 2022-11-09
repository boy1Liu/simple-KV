//
// Created by BOYILIU on 11/2/22.
//
#include <string.h>
#include <stdio.h>
#include "kv_interface.h"
#include "line_parser.h"

#define MAX_WORD_LEN 1<<6
#define SET_WORD "set"
#define GET_WORD "get"
#define QUIT_WORD "quit"
#define REMOVE_WORD "remove"

static char set_key[MAX_WORD_LEN];
static char set_value[MAX_WORD_LEN];
static char get_key[MAX_WORD_LEN];
static char remove_key[MAX_WORD_LEN];

int analyse_word(char *word) {
    if(strcmp(word, SET_WORD) == 0) {
        scanf("%s", set_key);
        scanf("%s", set_value);
        kv_set(strdup(set_key), strdup(set_value));
        return 0;
    } else if (strcmp(word, GET_WORD) == 0) {
        scanf("%s", get_key);
        kv_get(strdup(get_key));
        return 0;
    } else if(strcmp(word, QUIT_WORD) == 0) {
        return -1;
    } else if(strcmp(word, REMOVE_WORD) == 0) {
        scanf("%s", remove_key);
        kv_remove(strdup(remove_key));
        return 0;
    } else {
        printf("no such instruction\n");
        return 0;
    }
}