// Sample for reading a file asynchronously using libuv
// taken from https://www.snip2code.com/Snippet/247423/Sample-for-reading-a-file-asynchronously

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <uv.h>
#include "hash.h"
#include "defines.h"

static uv_fs_t openReq;
static uv_fs_t readReq;
static uv_fs_t closeReq;
static uv_buf_t uvBuf;
static char dataBuf[kBufSize];
static void onRead(uv_fs_t* req);
static uint8_t hash_result[64] = { 0 };

//////////////////////////////////////////////////
static void readData(uint32_t size)
{
    hash_update(dataBuf, size);
    uvBuf = uv_buf_init(dataBuf, sizeof(dataBuf));
    uv_fs_read(uv_default_loop(), &readReq, openReq.result, &uvBuf, 1, -1, onRead);
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
        uvBuf = uv_buf_init(dataBuf, sizeof(dataBuf));
        uv_fs_read(uv_default_loop(), &readReq, req->result, &uvBuf, 1, -1, onRead);
    }
    uv_fs_req_cleanup(req);
}
//////////////////////////////////////////////////


int test_async_read_1(char* filename) {
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