BINARY="test"
VERSION=1.0.0
BUILD=`date +%FT%T%z`

default:
	@echo ${BINARY}
	@echo ${VERSION}
	@echo ${BUILD}

run: default

test:

clean:

.PHONY: default run test clean