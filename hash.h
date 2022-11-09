//
// Created by BOYILIU on 11/7/22.
//

#ifndef SIMPLE_KV_HASH_H
#define SIMPLE_KV_HASH_H

#define BUCKET_COUNT 128
#define HASH_CONST 88298744

struct hash_entry
{
    char* key;
    char* value;
    struct hash_entry* next;
};

typedef struct hash_entry entry;

struct hash_table
{
    entry bucket[BUCKET_COUNT];  //先默认定义16个桶
};

typedef struct hash_table table;

void init_hash_table();
void free_hash_table();
int key2index(const char* key);
int insert_entry(char* key, char* value);
const char* find_value_by_key(const char* key);
void free_key(const char* key);

#endif //SIMPLE_KV_HASH_H
