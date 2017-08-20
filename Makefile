ifeq ($(shell uname -s),Darwin)
	LIBS=-framework OpenCL
else
	LIBS=-lOpenCL
endif

target/multiply:
	mkdir -p target
	gcc -std=c99 multiply_arrays.c $(LIBS) -o target/multiply_arrays
	gcc -std=c99 multiply_arrays_compare.c $(LIBS) -o target/multiply_arrays_compare
