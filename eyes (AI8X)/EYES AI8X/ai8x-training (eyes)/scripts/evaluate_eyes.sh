# #!/bin/sh
# python train.py --model ai85cdnet --dataset eyes --confusion --evaluate --exp-load-weights-from ../ai8x-training/logs/2025.12.30-033219/eyes-qat8-q.pth.tar -8 --device MAX78000 "$@"


#!/bin/sh
python train.py --model ai85cdnet --dataset eyes --confusion --evaluate --exp-load-weights-from logs/2025.12.30-033219/eyes-qat8-q.pth.tar -8 --device MAX78000 --save-sample 1


