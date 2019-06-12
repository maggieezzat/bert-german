#!/bin/bash


python3 /home/maggie/bert-german/emotions_classifier.py \
--data_dir=gs://deep_speech_bucket/maggie/twitter-data/ \
--bert_config_file=/home/maggie/bert-german/config/bert_config_uncased.json \
--vocab_file=/home/maggie/bert-german/vocab/vocab_bert_final_uncased_1000.txt \
--output_dir=gs://deep_speech_bucket/maggie/twitter_results/tweets_bert_no_tweets_pretraining/ \
--do_lower_case=True \
--do_train=True \
--do_eval=True \
--do_predict=False \
--use_tpu=True \
--tpu_name=$TPU_NAME \
--init_checkpoint=gs://deep_speech_bucket/maggie/bert_chkpts/bert/
