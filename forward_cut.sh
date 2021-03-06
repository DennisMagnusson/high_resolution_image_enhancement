cd contrastive-unpaired-translation
python3 test.py --preprocess scale_longside --load_size 512 --dataroot ../dataset/ --name artwork_fastcut_pretrained --gpu_ids -1 --no_dropout --model cut
mv ./results/artwork_fastcut_pretrained/test_latest/images/fake_B/* ../results/fastcut
python3 test.py --preprocess scale_longside --load_size 512 --dataroot ../dataset/ --name artwork_cut_pretrained --gpu_ids -1 --no_dropout --model cut
mv ./results/artwork_cut_pretrained/test_latest/images/fake_B/* ../results/cut
python3 test.py --preprocess scale_longside --load_size 2048 --dataroot ../dataset/ --name artwork_fastcut_pretrained --gpu_ids -1 --no_dropout --model cut
mv ./results/artwork_fastcut_pretrained/test_latest/images/fake_B/* ../results/fastcut_2048
python3 test.py --preprocess scale_longside --load_size 2048 --dataroot ../dataset/ --name artwork_cut_pretrained --gpu_ids -1 --no_dropout --model cut
mv ./results/artwork_cut_pretrained/test_latest/images/fake_B/* ../results/cut_2048
cd ..
