#!/bin/bash



python3 /home/maggie/bert-german/run_pretraining.py \
--input_file=/home/maggie/bert-german/tfrecord_lists/articles_512.csv \
--output_dir=gs://deep_speech_bucket/maggie/bert_chkpts/articles_512_15K_5e-5/ \
--do_train=True \
--do_eval=True \
--do_lower=True \
--bert_config_file=/home/maggie/bert-german/config/bert_config_uncased.json \
--train_batch_size=128 \
--max_seq_length=512 \
--max_predictions_per_seq=77 \
--num_train_steps=15000 \
--num_warmup_steps=1000 \
--learning_rate=5e-5 \
--use_tpu=True \
--tpu_name=$TPU_NAME \
--tpu_zone=us-central1-f \
--init_checkpoint=gs://deep_speech_bucket/maggie/bert_chkpts/bert/model.ckpt-90000
