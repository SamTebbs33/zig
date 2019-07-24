// This header is generated by zig from base64.zig
#include "base64.h"

#include <assert.h>
#include <string.h>

extern int *x_ptr;

int main(int argc, char **argv) {
    const char *encoded = "YWxsIHlvdXIgYmFzZSBhcmUgYmVsb25nIHRvIHVz";
    char buf[200];

    size_t len = decode_base_64((uint8_t *)buf, 200, (uint8_t *)encoded, strlen(encoded));
    buf[len] = 0;
    assert(strcmp(buf, "all your base are belong to us") == 0);

    assert(*x_ptr == 1234);

    return 0;
}