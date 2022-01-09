#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "defines.h"

static char dataBuf[kBufSize];

//////////////////////////////////////////////////
int test_read_only(char* filename) {
    FILE* fp = NULL;
    fp = fopen(filename, "rb");
    if (!fp) {
        printf("failed to open file %s\n", filename);
    }
    if (fp) {
        while (!feof(fp)) {
            uint32_t read_number = fread(dataBuf, 1, sizeof(dataBuf), fp);
        }
    }
    if (fp) {
        fclose(fp);
    }
    printf("read done \n");
    return 0;
 }
//////////////////////////////////////////////////