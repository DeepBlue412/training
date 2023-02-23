#!/bin/sh
# first try!
#PBS -l walltime=02:00:00
#PBS -l select=1:ncpus=2:mem=8GB

module load "gaussian/g16-c01-avx"

cp /rds/general/user/zl2122/home/training/gaussian/water/H2O.gjf ./
 
g03 H2O.gjf

cp *.log /rds/general/user/zl2122/home/training/gaussian/water/
cp *.chk /rds/general/user/zl2122/home/training/gaussian/water/

echo "well done!"
