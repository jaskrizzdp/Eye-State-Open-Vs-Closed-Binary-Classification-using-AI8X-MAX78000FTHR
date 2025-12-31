# #!/bin/sh
# python quantize.py trained/ai85-catsdogs-qat8.pth.tar trained/ai85-catsdogs-qat8-q.pth.tar --device MAX78000 -v "$@"


#!/bin/sh
python quantize.py \
../ai8x-training/logs/2025.12.30-033219/best.pth.tar \
../ai8x-training/logs/2025.12.30-033219/eyes-qat8-q.pth.tar \
--device MAX78000 -v "$@"
