#!/bin/bash
set -e  # Exit on error

# === Step 1: Basic environment setup ===
unset PYTHONPATH
unset LD_LIBRARY_PATH
export CONDA_PREFIX=$(realpath conda-env)
export PATH="$CONDA_PREFIX/miniconda3/bin:$PATH"

# === Step 2: Check if environment is already set up ===
if [ -d "$CONDA_PREFIX/miniconda3/envs/GLdev" ]; then
    echo "Existing GLdev environment detected. Skipping setup."
else
    echo "GLdev environment not found. Starting setup..."

    # Create the conda environment directory
    mkdir -p "$CONDA_PREFIX"
    cd "$CONDA_PREFIX"

    # Download and install Miniconda
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
    bash miniconda.sh -b -p "$CONDA_PREFIX/miniconda3"

    # Source Conda
    source "$CONDA_PREFIX/miniconda3/etc/profile.d/conda.sh"

    # Create the GLdev environment
    conda create -y -n GLdev python=3.10

    # Activate the environment
    conda activate GLdev

    # Install packages with conda
    conda install jupyter jupyterlab notebook nbclassic jupyter_server_ydoc jupyter_server_fileid numpy=1.24 matplotlib magic netgen ngspice pip -c litex-hub -c conda-forge -c anaconda -y

    # Register the kernel
    python -m ipykernel install --user --name=GLdev

    # Install pip packages
    pip install glayout==0.0.9
    pip install "klayout>=0.28,<0.29"
    pip install svgutils

    # Clone the repo if not already
    if [ ! -d "$CONDA_PREFIX/../OpenFASOC" ]; then
        git clone https://github.com/idea-fasoc/OpenFASOC "$CONDA_PREFIX/../OpenFASOC"
    fi

    echo "Setup complete!"
fi

# === Step 3: Activate environment and launch Jupyter ===
echo "Launching Jupyter Lab..."
source "$CONDA_PREFIX/miniconda3/etc/profile.d/conda.sh"
conda activate GLdev
jupyter lab --ip=0.0.0.0 --no-browser --port=8888
