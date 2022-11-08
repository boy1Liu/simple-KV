//
// Created by BOYILIU on 11/2/22.
//

#ifndef SIMPLE_KV_MEMORY_MANAGE_H
#define SIMPLE_KV_MEMORY_MANAGE_H

#include "stdlib.h"
#include "string.h"
#include "sys/mman.h"
#include "stdio.h"

struct chunk_item {
    size_t addr;
    struct chunk_item* next;
};

typedef struct chunk_item item;

struct slab_item {
    void* free_item;  // pointer to free item
    void** slab_list;  // pointer to slab list
    unsigned int slab_num;
    unsigned int chunk_num;
    unsigned int chunk_size;
};

typedef struct slab_item slab;

void init_slabs();
void init_mem();
void alloc_page(unsigned int slab_id);
int has_free_slab(unsigned int slab_id);
void * write_into_chunk(unsigned int slab_id, const char *value);
unsigned int get_slab_index(const char * str);

#endif //SIMPLE_KV_MEMORY_MANAGE_H
