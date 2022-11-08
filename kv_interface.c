//
// Created by BOYILIU on 11/7/22.
//

#include "hash.h"
#include "memory_manage.h"
#include "util.h"
#include "kv_interface.h"
#define MAX_INPUT_LEN (8 << 3)

extern table t;

int kv_set(char* key, char* value) {
    TEST_NZ(check_input_len(key));
    TEST_NZ(check_input_len(value));
    void * p = write_into_chunk(get_slab_index(value), value);
    printf("insert <key \"%s\" value 0x%x> into hash map\n", key, p);
    insert_entry(key, p);
    return 0;
}

const char* kv_get(char *key) {
    TEST_NZ(check_input_len(key));
    const char * res = find_value_by_key(key);
    if (res == NULL) {
        printf("there is no value for key %s\n", key);
        return NULL;
    }
    printf("value of key %s is: %s\n", key, res);
    return res;
}

int check_input_len(char *input) {
    if (strlen(input) > MAX_INPUT_LEN) return -1;
    return 0;
}