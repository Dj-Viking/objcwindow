set -xe;
if [ -z ./MicroApp ]; then
	rm ./MicroApp
fi

if [ -z ./dist/MicroApp ]; then
	rm ./dist/MicroApp
fi

if ! [ -d dist ]; then
	mkdir dist;
fi

gcc -fobjc-arc -framework Cocoa main.m -o ./dist/MicroApp
pushd ./dist;
./MicroApp
popd;

