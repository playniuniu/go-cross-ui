BINARY=crossui
VERSION=0.1
LD_FLAGS='-w -s'
WIN_LD_FLAGS='-w -s -H windowsgui'
WIN_CC=x86_64-w64-mingw32-gcc
WIN_CXX=x86_64-w64-mingw32-g++

mac:
	@echo "build for mac"
	@rm -f ./${BINARY}
	@go build -o ${BINARY} -ldflags ${LD_FLAGS} cmd/*.go

windows:
	@echo "build for windows gui"
	@rm -f ./${BINARY}.exe
	@CGO_ENABLED=1 GOOS=windows GOARCH=amd64 CC=${WIN_CC} CXX=${WIN_CXX} go build -o ${BINARY}.exe -ldflags ${WIN_LD_FLAGS} cmd/*.go

clean:
	@echo "clean binary"
	@rm -f ${BINARY}
	@rm -f ${BINARY}.exe

.PHONY: mac windows clean
