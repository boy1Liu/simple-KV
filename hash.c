//
// Created by BOYILIU on 11/7/22.
//

#include <stdlib.h>
#include <string.h>
#include "hash.h"

table t;

void init_hash_table() {
    table *tt = &t;
    for (int i = 0; i < BUCKET_COUNT; ++i) {
        tt->bucket[i].key = NULL;
        tt->bucket[i].value = NULL;
        tt->bucket[i].next = NULL;
    }
}

void free_hash_table() {
    table *tt = &t;
    if(tt == NULL) {
        return;
    }
    entry *e, *e_nxt;
    for (int i = 0; i < BUCKET_COUNT; ++i) {
        e = &(tt->bucket[i]);
        while(e->next != NULL) {
            e_nxt = e->next;
            free(e);
            e = e_nxt;
        }
        free(e);
    }
}

void free_key(const char* key) {
    table *tt = &t;
    if(tt == NULL) {
        return;
    }
    entry *e, *e_prev=NULL;

    int idx = key2index(key);
    e = &(tt->bucket[idx]);
    while(e != NULL) {
        if (strcmp(e->key, key) == 0) {
            if (e_prev == NULL && e->next == NULL) {
                e->key = NULL;
                e->value = NULL;
            } else {
                if (e_prev != NULL) {
                    e_prev->next = e->next;
                } else if (e->next != NULL) {
                    tt->bucket[idx] = *(e->next);
                }
                free(e);
            }
            return;
        }
        e_prev = e;
        e = e->next;
    }
}

int key2index(const char* key) {
    if (key == NULL) {
        return -1;
    }
    int len = (int)strlen(key);
    int index = (int)key[0];
    for (int i = 1; i < len; ++i) {
        index *= HASH_CONST + (int)key[i];
    }
    index >>= 27;
    index &= (BUCKET_COUNT - 1);
    return index;
}

int insert_entry(char* key, char* value) {
    table *tt = &t;
    if (tt == NULL || key == NULL || value == NULL) {
        return -1;
    }
    int index = key2index(key);
    if (tt->bucket[index].key == NULL) {
        tt->bucket[index].key = key;
        tt->bucket[index].value = value;
        return index;
    }

    entry *e = &(tt->bucket[index]);
    entry *e_pst;
    while(e != NULL) {
        if (strcmp(e->key, key) == 0) {
//            free(e->value);
            e->value = value;
            return index;
        }
        e_pst = e;
        e = e->next;
    }
    e = (entry*) malloc(sizeof (entry));
    e->key = key;
    e->value = value;
    e->next = NULL;
    e_pst->next = e;
    return index;
}

const char* find_value_by_key(const char* key) {
    table *tt = &t;
    if (tt == NULL || key == NULL) {
        return NULL;
    }
    int index = key2index(key);
    const entry *e = &(tt->bucket[index]);
    if (e->key == NULL){
        return NULL;
    }
    while (e != NULL) {
        if (strcmp(key, e->key) == 0) return e->value;
        e = e->next;
    }
    return NULL;
}