#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "hash.h"
#include "defines.h"

static char dataBuf[kBufSize];
static uint8_t hash_result[64] = { 0 };

//////////////////////////////////////////////////
int test_hash_only(uint32_t size) {
	uint8_t buff[kBufSize] = { 0 };
	hash_init();
	for (uint32_t i = 0; i < size; i += kBufSize) {
		hash_update(buff, sizeof(buff));
	}
	hash_finish(hash_result);
	printf("hash only done\n");
	return 0;
}
//////////////////////////////////////////////////