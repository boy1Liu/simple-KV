//
// Created by BOYILIU on 11/2/22.
//

#define FACTOR 2
#define BASE_CHUNK_SIZE 8
#define SLAB_CLASS_NUM 10
#define PAGE_SIZE (1 << 10)
#define MAX_SLAB_NUM 16
#define SLAB_NUM 3


#include "memory_manage.h"

char * base_mem;
static slab slabs[SLAB_CLASS_NUM];

void init_slabs() {
    int cur_chunk_size = BASE_CHUNK_SIZE;
    for (int i = 0; i < SLAB_NUM; ++i) {
        slabs[i].free_item = NULL;
        slabs[i].slab_list = NULL;
        slabs[i].slab_num = 0;
        slabs[i].chunk_num = PAGE_SIZE / cur_chunk_size;
        slabs[i].chunk_size = cur_chunk_size;
        cur_chunk_size *= FACTOR;
    }
}

void init_mem() {
    base_mem = malloc(1<<14);
    printf("alloc base memory to 0x%x\n", base_mem);
}

void alloc_page(unsigned int slab_id) {
    slab *s = &slabs[slab_id];
    int size = (int)s->chunk_size;

    if(s->slab_list == NULL) {
        s->slab_list = malloc(MAX_SLAB_NUM * sizeof (void *));
    }

    s->slab_list[s->slab_num++] = base_mem;

    for (int i = 0; i < PAGE_SIZE; i+=size) {
        item *it = malloc(sizeof (item));
        it->addr = (size_t)base_mem + i;
        if (s->free_item == NULL) {
            s->free_item = it;
        } else {
            // insert it into the head of linked list
            item *temp = (item*) s->free_item;
            it->next = temp;
            s->free_item = it;
        }
    }
    base_mem += PAGE_SIZE;
}

int has_free_slab(unsigned int slab_id) {
    slab *s = &slabs[slab_id];
    if (s->free_item == NULL) {
        return -1;
    }
    return 0;
}

void * write_into_chunk(unsigned int slab_id, const char *value) {
    slab *s = &slabs[slab_id];
    if (has_free_slab(slab_id) == -1) {
        alloc_page(slab_id);
    }
    item *it = s->free_item;
    item *it_nxt = it->next;
    void * p = (void *) it->addr;

    // write string into memory
    strcpy(p, value);
    printf("write value %s to address 0x%x with slab id %d\n", value, p, slab_id);

    // free space
    it->next = NULL;
    free(it);
    s->free_item = it_nxt;

    return p;
}

unsigned int get_slab_index(const char * str) {
    unsigned int l = strlen(str);
    for (int i = 0; i < MAX_SLAB_NUM; ++i) {
        if (slabs[i].chunk_size > l) {
            return i;
        }
    }
    return MAX_SLAB_NUM-1;
}