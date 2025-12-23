# AdaIN-pytorch

This project implements Arbitrary Style Transfer using Adaptive Instance Normalization (AdaIN) based on the paper by Huang et al. (2017). It allows real-time style transfer between images and videos.

## Features

- Image style transfer
- Video style transfer
- Training script for custom models
- Pre-trained models included

## Installation

1. Clone the repository:

```bash
git clone https://github.com/xudong7/digital-process-final-hw.git
cd digital-process-final-hw
```

1. Install dependencies using uv:

```bash
uv sync
```

1. Download pre-trained models:

```bash
chmod +x download.sh
./download.sh
```

## Usage

### Testing Style Transfer

To perform style transfer on a single image:

```bash
uv run python test.py --content input/content/cornell.jpg --style input/style/woman_with_hat_matisse.jpg
```

Arguments:

- `--content`: Path to content image
- `--content_dir`: Directory of content images for batch processing
- `--style`: Path to style image
- `--style_dir`: Directory of style images
- `--output`: Output directory (default: output/)
- `--alpha`: Style interpolation weight (0-1, default: 1.0)
- `--preserve_color`: Preserve original color of content image

### Training

To train the model:

```bash
uv run python train.py --content_dir /path/to/content/dataset --style_dir /path/to/style/dataset --epochs 10
```

### Video Style Transfer

For video style transfer:

```bash
uv run python test_video.py --content input/videos/content_video.mp4 --style input/style/style_image.jpg --output output/styled_video.mp4
```

## Project Structure

```
digital-process-final-hw/
├── README.md
├── pyproject.toml
├── download.sh
├── input/
│   ├── content/         # Content images
│   ├── style/           # Style images
│   ├── styleexample/    # Example style images
│   ├── mask/            # Mask images (if used)
│   └── videos/          # Video files
├── function.py          # AdaIN and CORAL functions
├── net.py               # Network definitions (VGG and Decoder)
├── sampler.py           # Data sampling utilities
├── test.py              # Image style transfer script
├── test_video.py        # Video style transfer script
└── train.py             # Training script
```

## Dependencies

- torch>=2.0.0
- torchvision>=0.15.0
- pillow>=10.0.0
- numpy>=1.24.0
- tqdm>=4.65.0
- tensorboard>=2.10.0
- opencv-python>=4.8.0
- imageio>=2.31.0

## Reference

@inproceedings{huang2017adain,
title={Arbitrary Style Transfer in Real-time with Adaptive Instance Normalization},
author={Huang, Xun and Belongie, Serge},
booktitle={ICCV},
year={2017}
}

Original implementation: <https://github.com/naoto0804/pytorch-AdaIN>
