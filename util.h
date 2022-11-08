//
// Created by BOYILIU on 11/8/22.
//

#ifndef SIMPLE_KV_UTIL_H
#define SIMPLE_KV_UTIL_H

#define TEST_NZ(x) do { if ( (x)) die("error: " #x " failed (returned non-zero)." ); } while (0)
#define TEST_Z(x)  do { if (!(x)) die("error: " #x " failed (returned zero/null)."); } while (0)
void die(const char *reason);

#endif //SIMPLE_KV_UTIL_H
