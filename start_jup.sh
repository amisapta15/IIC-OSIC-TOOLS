#!/bin/bash
unset PYTHONPATH
unset LD_LIBRARY_PATH
export CONDA_PREFIX=$(realpath conda-env)
export PATH="$CONDA_PREFIX/miniconda3/bin:$PATH"
source "$CONDA_PREFIX/miniconda3/etc/profile.d/conda.sh"
conda activate GLdev
jupyter lab --ip=0.0.0.0 --no-browser --port=8888
