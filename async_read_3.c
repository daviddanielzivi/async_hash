// Sample for reading a file asynchronously using libuv
// taken from https://www.snip2code.com/Snippet/247423/Sample-for-reading-a-file-asynchronously

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <uv.h>
#include "defines.h"

static uv_fs_t openReq;
static uv_fs_t readReq;
static uv_fs_t closeReq;
static uv_buf_t uvBuf;
static char dataBuf[kBufSize];
static char tmpBuf[kBufSize];
static void onRead(uv_fs_t* req);
static uint8_t hash_result[64] = { 0 };
static uint8_t* read_buf; 
static uint8_t* hash_buf;
//////////////////////////////////////////////////
static void readData(uint32_t size)
{
	uint8_t* tmp = read_buf;
	read_buf = hash_buf;
	hash_buf = tmp;
	uvBuf = uv_buf_init(read_buf, sizeof(tmpBuf));
	uv_fs_read(uv_default_loop(), &readReq, openReq.result, &uvBuf, 1, -1, onRead);
	hash_update(hash_buf, size);
}
//////////////////////////////////////////////////
static void onRead(uv_fs_t* req)
{
	uv_fs_req_cleanup(req);
	if (req->result < 0) {
		fprintf(stderr, "error: %s\n", uv_strerror(req->result));
	}
	else if (req->result == 0) {
		uv_fs_close(uv_default_loop(), &closeReq, openReq.result, NULL);
	}
	else {
		readData(req->result);
	}
}
//////////////////////////////////////////////////
static void onOpen(uv_fs_t* req)
{
	if (req->result < 0) {
		fprintf(stderr, "error: %s\n", uv_strerror(req->result));
	}
	else {
		read_buf = tmpBuf;
		hash_buf = dataBuf;
		uvBuf = uv_buf_init(read_buf, sizeof(tmpBuf));
		uv_fs_read(uv_default_loop(), &readReq, req->result, &uvBuf, 1, -1, onRead);
	}
	uv_fs_req_cleanup(req);
}
//////////////////////////////////////////////////


int test_async_read_3(char* filename) {
	hash_init();
	uv_fs_open(uv_default_loop(), &openReq, filename, O_RDONLY, 0, onOpen);
	uv_run(uv_default_loop(), UV_RUN_DEFAULT);
	hash_finish(hash_result);
	for (uint32_t i = 0; i < sizeof(hash_result); i++) {
		printf("%02x ", hash_result[i]);
	}
	printf("\n");
	return 0;
}