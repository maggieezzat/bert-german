#!/bin/bash

mpirun -np 4 \
-H localhost:4 \
-bind-to none -map-by slot \
-x NCCL_DEBUG=INFO -x LD_LIBRARY_PATH -x PATH \
-mca pml ob1 -mca btl ^openib \
python /bert/bert-german/run_pretraining.py \
--input_file=/bert/bert-german/tfrecord_lists/test.csv \
--output_dir=/bert/test_out/ \
--do_train=True \
--do_eval=True \
--bert_config_file=/bert/bert-german/config/bert_config_uncased.json \
--train_batch_size=128 \
--max_seq_length=128 \
--max_predictions_per_seq=20 \
--num_train_steps=90000 \
--num_warmup_steps=10000 \
--learning_rate=1e-4 \
