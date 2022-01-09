#include <mbedtls/md.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "defines.h"

static char dataBuf[kBufSize];
static uint32_t hash_result = 0;



static mbedtls_md_context_t ctx;


//////////////////////////////////////////////////
void hash_init() {
	mbedtls_md_init(&ctx);
	mbedtls_md_info_t* md_info = mbedtls_md_info_from_string("SHA256");
	mbedtls_md_setup(&ctx, md_info, 0);
	mbedtls_md_starts(&ctx);
}

//////////////////////////////////////////////////
void hash_update(uint8_t *buff, uint32_t size) {
	mbedtls_md_update(&ctx, buff, size);
}

//////////////////////////////////////////////////
void hash_finish(uint8_t *result) {
	mbedtls_md_finish(&ctx, result);
	mbedtls_md_free(&ctx);
}
//////////////////////////////////////////////////
