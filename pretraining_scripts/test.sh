#!/bin/bash

export vocab=/home/maggie/bert-german/vocab/vocab_bert_final_uncased_1000.txt
vocab=/home/maggie/bert-german/vocab/vocab_bert_final_uncased_1000.txt


python3 /home/maggie/bert-german/run_pretraining.py \
--input_file=/home/maggie/bert-german/tfrecord_lists/dewiki_full_vocab_128_train.csv \
--output_dir=gs://deep_speech_bucket/maggie/bert_chkpts/test/ \
--do_train=True \
--do_eval=True \
--bert_config_file=/home/maggie/bert-german/config/bert_config_uncased.json \
--train_batch_size=896 \
--max_seq_length=128 \
--max_predictions_per_seq=20 \
--num_train_steps=90000 \
--num_warmup_steps=10000 \
--learning_rate=1e-4 \
--use_tpu=True \
--tpu_name=$TPU_NAME \
--tpu_zone=us-central1-f
