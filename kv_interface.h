//
// Created by BOYILIU on 11/7/22.
//

#ifndef SIMPLE_KV_KV_INTERFACE_H
#define SIMPLE_KV_KV_INTERFACE_H

int kv_set(char* key, char* value);
const char* kv_get(char *key);
int check_input_len(char *input);

#endif //SIMPLE_KV_KV_INTERFACE_H
