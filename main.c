#include <stdio.h>
#include <time.h>
#include <stdint.h>

extern void test_timer_worker();
extern int test_hash_only(uint32_t size);
extern int test_read_only(char* filename);
extern int test_sync_read(char* filename);
extern int test_async_read_1(char* filename);
extern int test_async_read_2(char* filename);
extern int test_async_read_3(char* filename);



int main(int argc, const char** argv) {
	clock_t start, end;
	double cpu_time_used;

	start = clock();
	test_read_only(argv[1]);
	end = clock();
	cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
	printf("time read only: %f\n", cpu_time_used);
	printf("-------------------------------------------------\n");


	start = clock();
	test_hash_only(1024*1024*100);
	end = clock();
	cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
	printf("time hash only: %f\n", cpu_time_used);
	printf("-------------------------------------------------\n");


	start = clock();
	test_sync_read(argv[1]);
	end = clock();
	cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
	printf("time sync: %f\n", cpu_time_used);
	printf("-------------------------------------------------\n");

	start = clock();
	test_async_read_1(argv[1]);
	end = clock();
	cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
	printf("time async_1: %f\n", cpu_time_used);
	printf("-------------------------------------------------\n");

	start = clock();
	test_async_read_2(argv[1]);
	end = clock();
	cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
	printf("time async_2: %f\n", cpu_time_used);
	printf("-------------------------------------------------\n");

	start = clock();
	test_async_read_3(argv[1]);
	end = clock();
	cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
	printf("time async_3: %f\n", cpu_time_used);
	printf("-------------------------------------------------\n");

}