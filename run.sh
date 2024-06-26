#!/usr/bin/bash


# In the training and testing phase
for eachTF in `ls ./pbmdata/`
do 
	echo $eachTF
	if [ -d ./model_shape/$eachTF ]; then
	   echo $eachTF 'has existed.'
	   continue
	fi
    python train_val_test_hybrid.py -datadir ./pbmdata/$eachTF/data \
                                        -run 'shape' -model 'CRPTS' -batchsize 300 -k 5 -params 18 --train
   
done

