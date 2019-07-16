#!/bin/bash

[ -d /bert/tfrecords ] || mkdir /bert/tfrecords

csv=/bert/dewiki_csv_files/
out=/bert/tfrecords/
vocab=/bert/bert-german/vocab/bert_vocab_lower_500_wiki.txt

echo $csv
echo $out
echo $vocab

for file in "$csv"*.csv; do
	filename=$(basename -- "$file")
	extension="${filename##*.}"
	filename="${filename%.*}"
	python3 /bert/bert-german/create_pretraining_data.py --input_file="$file" --output_file="$out$filename".tfrecord --vocab_file=$vocab --do_lower_case=True --max_seq_length=128 --max_predictions_per_seq=20 --masked_lm_prob=0.15 --random_seed=12345 --dupe_factor=5
done
