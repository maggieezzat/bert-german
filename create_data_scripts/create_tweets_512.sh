#!/bin/bash

[ -d /home/maggie/tfrecords ] || mkdir /home/maggie/tfrecords

out=/home/maggie/tfrecords/pretraining_tweets.tfrecord
vocab=/home/maggie/bert-german/vocab/vocab_bert_final_uncased_1000.txt
tweets_text=/home/maggie/pretraining_tweets.txt


python3 /home/maggie/bert-german/create_pretraining_data.py --input_file=$tweets_text --output_file=$out --vocab_file=$vocab --do_lower_case=True --max_seq_length=512 --max_predictions_per_seq=77 --masked_lm_prob=0.15 --random_seed=12345 --dupe_factor=5

