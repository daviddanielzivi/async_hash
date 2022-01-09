#pragma once

#include <stdint.h>



void hash_init();
void hash_update(uint8_t* buff, uint32_t size);
void hash_finish(uint8_t* result);