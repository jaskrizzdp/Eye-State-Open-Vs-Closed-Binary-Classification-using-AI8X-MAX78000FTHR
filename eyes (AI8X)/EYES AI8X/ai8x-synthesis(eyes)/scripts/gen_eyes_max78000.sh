#!/bin/sh
# Generate C code for MAX78000 from eyes quantized model

# Device and target folder
DEVICE="MAX78000"
TARGET="C:/MaximSDK/Examples/MAX78000/CNN"  

# Common arguments for ai8xize.py
COMMON_ARGS="--device $DEVICE --timer 0 --display-checkpoint --verbose"

# Paths to input files
CHECKPOINT="../ai8x-training/logs/2025.12.30-033219/eyes-qat8-q.pth.tar"
SAMPLE="../ai8x-training/logs/2025.12.30-033219/sample_eyes.npy"
YAML="networks/eyes-hwc.yaml"

# Run synthesis
python ai8xize.py \
    --test-dir $TARGET \
    --prefix eyes \
    --checkpoint-file $CHECKPOINT \
    --config-file $YAML \
    --sample-input $SAMPLE \
    --fifo \
    --softmax \
    $COMMON_ARGS "$@"
