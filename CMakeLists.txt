cmake_minimum_required(VERSION 3.20)
project(simple_KV C)

set(CMAKE_C_STANDARD 99)

add_executable(simple_KV main.c line_parser.c line_parser.h memory_manage.c memory_manage.h hash.c hash.h kv_interface.c kv_interface.h util.h util.c)
