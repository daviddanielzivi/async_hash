#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "hash.h"
#include "defines.h"

static char dataBuf[kBufSize];
static uint8_t hash_result[64] = {0};


//////////////////////////////////////////////////
int test_sync_read(char* filename) {
    FILE* fp = NULL;

    hash_init();
    
    fp = fopen(filename, "rb");
    if (!fp) {
        printf("failed to open file %s\n", filename);
    }
    if (fp) {
        while (!feof(fp)) {
            uint32_t read_number = fread(dataBuf, 1, sizeof(dataBuf), fp);
            hash_update(dataBuf , read_number);
        }
    }
    if (fp) {
        fclose(fp);
    }
    hash_finish(hash_result);
    
    for (uint32_t i = 0; i < sizeof(hash_result); i++) {
        printf("%02x ", hash_result[i]);
    }
    printf("\n");
    return 0;
 }
//////////////////////////////////////////////////