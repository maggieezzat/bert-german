#!/bin/bash

export BERT_BASE_DIR=gs://deep_speech_bucket/multi_cased_L-12_H-768_A-12
BERT_BASE_DIR=gs://deep_speech_bucket/multi_cased_L-12_H-768_A-12

#python3 /home/maggie/bert/emotions_classifier.py \
#--data_dir=gs://deep_speech_bucket/tweets/ \
#--bert_config_file=$BERT_BASE_DIR/bert_config.json \
#--vocab_file=$BERT_BASE_DIR/vocab.txt \
#--output_dir=gs://deep_speech_bucket/finetuning_tweets_bare_model/ \
#--do_lower_case=False \
#--do_train=True \
#--do_eval=True \
#--do_predict=True \
#--use_tpu=True \
#--tpu_name=$TPU_NAME \
#--init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt

#python3 /home/maggie/bert/emotions_classifier.py \
#--data_dir=gs://deep_speech_bucket/tweets/ \
#--bert_config_file=$BERT_BASE_DIR/bert_config.json \
#--vocab_file=$BERT_BASE_DIR/vocab.txt \
#--output_dir=gs://deep_speech_bucket/finetuning_tweets_original_model/ \
#--do_lower_case=False \
#--do_train=True \
#--do_eval=True \
#--do_predict=True \
#--use_tpu=True \
#--tpu_name=$TPU_NAME \
#--init_checkpoint=gs://deep_speech_bucket/bert_checkpoints/original_model

#python3 /home/maggie/bert/emotions_classifier.py \
#--data_dir=gs://deep_speech_bucket/tweets/ \
#--bert_config_file=/home/maggie/bert/config/bert_config_cased.json \
#--vocab_file=/home/maggie/bert/vocab/vocab_cased_1000.txt \
#--output_dir=gs://deep_speech_bucket/finetuning_tweets_cased/ \
#--do_lower_case=False \
#--do_train=True \
#--do_eval=True \
#--do_predict=True \
#--use_tpu=True \
#--tpu_name=$TPU_NAME \
#--init_checkpoint=gs://deep_speech_bucket/my_cased_model

python3 /home/maggie/bert/emotions_classifier.py \
--data_dir=gs://deep_speech_bucket/tweets/ \
--bert_config_file=/home/maggie/bert/config/bert_config_uncased.json \
--vocab_file=/home/maggie/bert/vocab/vocab_uncased_1000.txt \
--output_dir=gs://deep_speech_bucket/finetuning_tweets_uncased/ \
--do_lower_case=False \
--do_train=True \
--do_eval=True \
--do_predict=True \
--use_tpu=True \
--tpu_name=$TPU_NAME \
--init_checkpoint=gs://deep_speech_bucket/my_uncased_model