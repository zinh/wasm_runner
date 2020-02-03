CC=clang++
.PHONY: deps clean

test: wasm_test.out
	./wasm_test.out

wasm_test.out: tests/wasm_test.o
	$(CC) tests/wasm_test.o -o wasm_test.out

wasm_test.o: tests/wasm_test.cpp
	$(CC) -c tests/wasm_test.cpp -o tests/wasm_test.o

clean:
	rm -rf wasm_test.out

deps:
	- mkdir -p lib/boost
	- curl -JL https://dl.bintray.com/boostorg/release/1.72.0/source/boost_1_72_0.tar.gz | tar -xf - -C lib/boost --strip-component=1
	- cd lib/boost && ./bootstrap.sh --with-libraries=test
	- cd lib/boost && ./b2 stage
