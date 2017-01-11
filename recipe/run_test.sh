#!/bin/bash

pushd tests

if [ "$(uname)" == "Darwin" ]; then
    python -b -m pytest
fi

if [ "$(uname)" == "Linux" ]; then
    #mpiexec -n 4 python -b -m pytest
    # Using only single core
    python -b -m pytest
fi

popd
