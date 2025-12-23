# download decoder.pth and vgg_normalised.pth
cd models

echo "Downloading vgg_normalised.pth ..."
curl -L -o vgg_normalised.pth https://github.com/naoto0804/pytorch-AdaIN/releases/download/v0.0.0/vgg_normalised.pth
echo "Downloading decoder.pth ..."

echo "Finished downloading models."
curl -L -o decoder.pth https://github.com/naoto0804/pytorch-AdaIN/releases/download/v0.0.0/decoder.pth
echo "Finished downloading models."

echo "All model files have been downloaded."