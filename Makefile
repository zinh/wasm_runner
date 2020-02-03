.PHONY: deps

deps:
	- mkdir -p lib/boost
	- curl -JL https://dl.bintray.com/boostorg/release/1.72.0/source/boost_1_72_0.tar.gz | tar -xf - -C lib/boost --strip-component=1
	- cd lib/boost && ./bootstrap.sh --with-libraries=test
	- cd lib/boost && ./b2 stage
