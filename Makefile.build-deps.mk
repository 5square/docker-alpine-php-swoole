copy_dependencies:
	mkdir -p ./build
	cp bin/amd64/nothing.sh ./build/pre-build
	cp bin/amd64/nothing.sh ./build/post-build

cleanup_dependencies:
	rm -f ./build/pre-build
	rm -f ./build/post-build