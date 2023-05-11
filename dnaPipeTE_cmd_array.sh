#!/bin/bash

array_number=${1} # Use this as a way to read the correct file

input_path=$(sed "${array_number}q;d")

cd /opt/dnaPipeTE


python3 dnaPipeTE.py -input ${input_path} -output /mnt/output -RM_lib ../RepeatMasker/Libraries/RepeatMasker.lib -genome_size 170000000 -genome_coverage 0.1 -sample_number 2 -RM_t 0.2 -cpu 2 


