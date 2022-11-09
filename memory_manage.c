//
// Created by BOYILIU on 11/2/22.
//

#define FACTOR 2
#define BASE_CHUNK_SIZE 8
#define MAX_SLAB_CLASS_NUM 10
#define PAGE_SIZE (1 << 12)
#define SLAB_CLASS_CONTENT 16
#define SLAB_CLASS_NUM 3  // the in


#include "memory_manage.h"

char * base_mem;
static slab slabs[MAX_SLAB_CLASS_NUM];

void init_slabs() {
    int cur_chunk_size = BASE_CHUNK_SIZE;
    for (int i = 0; i < SLAB_CLASS_NUM; ++i) {
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
        s->slab_list = malloc(SLAB_CLASS_CONTENT * sizeof (void *));
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

    // get a free item
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

int remove_key(void * addr) {
    // get slab class id
    unsigned int slab_id = get_slab_index_from_addr(addr);
    slab *s = &slabs[slab_id];

    // re-put into free list
    item *it = malloc(sizeof (item));
    item *first_it = s->free_item;
    it->addr = (size_t)addr;
    it->next = first_it;
    s->free_item = it;

    // clear the space
    memset(addr, 0, s->chunk_size);

    return 0;
}

unsigned int get_slab_index(const char * str) {
    unsigned int l = strlen(str);
    for (int i = 0; i < SLAB_CLASS_NUM; ++i) {
        if (slabs[i].chunk_size > l) {
            return i;
        }
    }
    return SLAB_CLASS_NUM-1;
}

unsigned int get_slab_index_from_addr(void * addr) {
    for (int i = 0; i < SLAB_CLASS_NUM; ++i) {
        for (int j = 0; j < SLAB_CLASS_CONTENT; ++j) {
            void * page_base = slabs[i].slab_list[j];
            if (page_base <= addr && page_base + PAGE_SIZE > addr) return i;
        }
    }
    return -1;
}