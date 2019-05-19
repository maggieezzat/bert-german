#!/bin/bash

export BERT_BASE_DIR=gs://deep_speech_bucket/multi_cased_L-12_H-768_A-12
BERT_BASE_DIR=gs://deep_speech_bucket/multi_cased_L-12_H-768_A-12

python3 /home/maggie/bert/run_pretraining.py \
--input_file=/home/maggie/bert/tfrecord_lists/dewiki_old_vocab_128_train.csv \
--output_dir=gs://deep_speech_bucket/bert_checkpoints/original_model_512_additional/ \
--init_checkpoint=gs://deep_speech_bucket/bert_checkpoints/original_model_512/ \
--do_train=True \
--do_eval=True \
--bert_config_file=$BERT_BASE_DIR/bert_config.json \
--init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
--train_batch_size=128 \
--max_seq_length=128 \
--max_predictions_per_seq=20 \
--num_train_steps=11000 \
--num_warmup_steps=100 \
--learning_rate=2e-5 \
--use_tpu=True \
--tpu_name=$TPU_NAME \
--tpu_zone=us-central1-f

