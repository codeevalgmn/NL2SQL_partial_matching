# NL2SQL Partial Matching

## Setup

If you're running Python version 3.7 on a macOS machine, you can establish a virtual environment by executing the following command:

```shell
bash setup.sh
```

If your setup doesn't meet these requirements, you'll need to manually install `torch_scatter` and `torch_sparse` from this URL `https://data.pyg.org/whl/`

Please note that the versions of `torch_scatter` and `torch_sparse` you'll need are contingent upon your specific torch version, Python version, and machine platform. After installation, you should adjust the paths of `torch_scatter` and `torch_sparse` in the `setup.sh` file.

## Training

For a quick start, you can train the model using our default settings by running the following command:

```shell
poetry run python3 GMN/train.py
```

If you prefer to train the model with your own settings, you'll need to modify the `configure.py` file. You can also adjust the `ONLINE_TRAIN_SETTINGS` in the `train.py` file to utilize your own dataset.

The data processor in the `train.py` file is interchangeable. If you wish to use the AST-based model, change the `data_processor` in the `train.py` file to `ASTProcessor`. If you're aiming to use the ROT-based model, change the `data_processor` to either `PositionalEncodingProcessor` or `MatchEdgeProcessor`.

## Inference

To run inference on the model, execute the following command:

```shell
poetry run python3 GMN/utils_file/predict_checkpoint.py
```

By default, this will use the checkpoint located in `GMN/save_file/checkpoints/`. If you'd like to use your own checkpoints, simply place them in this folder and adjust the `checkpoint_path` in the `predict_checkpoint.py` file.