#!/bin/bash

# here we're selecting the hypothalamus samples.

sed 1d hypothalamus_samplesheet.tsv | cut -f1 | sed 's/$/_/'  #> samples.txt

zcat 3col.tsv.gz | grep -f samples.txt | pigz > hypothalamus_3col.tsv.gz
