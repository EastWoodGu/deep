#/usr/bin/ena sh
DATA=examples/age
echo "create train_lmdb..."
rm -rf $DATA/train_lmdb
build/tools/convert_imageset --shuffle \
--resize_height=256 --resize_width=256 \
/opt/caffe/data/age_test/train/ $DATA/train.txt $DATA/train_lmdb

echo "create val_lmdb..."
rm -rf $DATA/val_lmdb
build/tools/convert_imageset --shuffle \
--resize_height=256 --resize_width=256 \
/opt/caffe/data/age_test/val/ $DATA/val.txt $DATA/val_lmdb
echo "All Done..."

