#!/bin/bash
# 获取当前脚本的绝对路径
SCRIPT_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/$(basename "${BASH_SOURCE[0]}")"
# 获取当前脚本的目录路径
SCRIPT_DIR=$(dirname "${SCRIPT_PATH}")

echo "The script is located at: $SCRIPT_PATH"


pip3 install poetry
poetry install

# 获取 Poetry 管理的虚拟环境的路径
VENV_PATH=$(poetry env info -p)
# 激活虚拟环境
source "$VENV_PATH/bin/activate"

# 定义相对路径
TORCH_SCATTER_RELATIVE_PATH="GMN/dependencies/torch_scatter-2.0.9-cp37-cp37m-macosx_10_15_x86_64.whl"
TORCH_SPARSE_RELATIVE_PATH="GMN/dependencies/torch_sparse-0.6.16-cp37-cp37m-macosx_10_15_x86_64.whl"

pip3 install "${SCRIPT_DIR}/${TORCH_SCATTER_RELATIVE_PATH}"
pip3 install "${SCRIPT_DIR}/${TORCH_SPARSE_RELATIVE_PATH}"