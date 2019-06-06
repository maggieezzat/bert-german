#!/bin/bash


#export BERT_BASE_DIR=gs://deep_speech_bucket/multi_cased_L-12_H-768_A-12
#BERT_BASE_DIR=gs://deep_speech_bucket/multi_cased_L-12_H-768_A-12

#python3 /home/maggie/bert/articles_classifier.py \
#--data_dir=gs://deep_speech_bucket/articles/ \
#--bert_config_file=$BERT_BASE_DIR/bert_config.json \
#--vocab_file=$BERT_BASE_DIR/vocab.txt \
#--output_dir=gs://deep_speech_bucket/finetuning_articles_bare_model/ \
#--do_lower_case=False \
#--do_train=True \
#--do_eval=True \
#--do_predict=True \
#--use_tpu=True \
#--tpu_name=$TPU_NAME \
#--init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt



#python3 /home/maggie/bert/articles_classifier.py \
#--data_dir=gs://deep_speech_bucket/articles/ \
#--bert_config_file=$BERT_BASE_DIR/bert_config.json \
#--vocab_file=$BERT_BASE_DIR/vocab.txt \
#--output_dir=gs://deep_speech_bucket/articles_original_model_complete/ \
#--do_lower_case=False \
#--do_train=True \
#--do_eval=True \
#--do_predict=True \
#--use_tpu=True \
#--tpu_name=$TPU_NAME \
#--init_checkpoint=gs://deep_speech_bucket/complete_original_model



#python3 /home/maggie/bert/articles_classifier.py \
#--data_dir=gs://deep_speech_bucket/articles/ \
#--bert_config_file=/home/maggie/bert/config/bert_config_cased.json \
#--vocab_file=/home/maggie/bert/vocab/vocab_cased_1000.txt \
#--output_dir=gs://deep_speech_bucket/articles_cased_complete/ \
#--do_lower_case=False \
#--do_train=True \
#--do_eval=True \
#--do_predict=True \
#--use_tpu=True \
#--tpu_name=$TPU_NAME \
#--init_checkpoint=gs://deep_speech_bucket/complete_cased_model



python3 /home/maggie/bert-german/articles_classifier.py \
--data_dir=gs://deep_speech_bucket/maggie/articles_data/ \
--bert_config_file=/home/maggie/bert-german/config/bert_config_uncased.json \
--vocab_file=/home/maggie/bert-german/vocab/vocab_bert_final_uncased_1000.txt \
--output_dir=gs://deep_speech_bucket/maggie/articles_results/articles_512_2K_5e-5/ \
--do_lower_case=True \
--do_train=True \
--do_eval=True \
--do_predict=False \
--use_tpu=True \
--tpu_name=$TPU_NAME \
--init_checkpoint=gs://deep_speech_bucket/maggie/bert_chkpts/articles_512_2K_5e-5/

