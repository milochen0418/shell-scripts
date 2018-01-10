#!/bin/bash
for i in $(seq 0 255)
do 
	echo register_value_with_threshold_gram\($(bc <<< "scale=2; $i/100")\)\,
done
