#!/usr/bin/env bash
echo "Output from executing 'ldd app':"
ldd app
echo ""
echo "Output from executing 'readelf app':"
readelf -l app
echo ""
chmod +x app
echo "Output from executing './app':"
echo "./app # This works!"
./app # This works!
echo ""
echo "/lib64/ld-linux-x86-64.so.2 ./app  # This works too."
/lib64/ld-linux-x86-64.so.2 ./app
echo ""
echo "# Homework exercise, run this and try to make sense of the output."
# Homework exercise, run this and try to make sense of the output.
echo "LD_DEBUG=all /lib64/ld-linux-x86-64.so.2 ./app"
LD_DEBUG=all /lib64/ld-linux-x86-64.so.2 ./app
