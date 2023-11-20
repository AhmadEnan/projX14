#!/bin/bash

vendor/bin/premake5/premake5 --cc=clang --file=Build.lua gmake2
popd