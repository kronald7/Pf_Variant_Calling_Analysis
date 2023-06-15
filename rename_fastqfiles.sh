#!/bin/bash

######## This script will rename the fastq files in the required format for the
######## Plasmodium falciparum customize GATK4 pipeline 

input='/fastq/files/directory'

cd $input

# Adjust the columns to select based on your fastq files nomenclature
# For paired-end files output should be sample_1.fastq.gz/sample_2.fastq.gz
 
for file in *.fastq.gz ; do
	new_name=$(echo $file | cut -d '_' -f 1,4|sed 's/R//')
	mv $file $new_name
        #echo $new_name	
done
