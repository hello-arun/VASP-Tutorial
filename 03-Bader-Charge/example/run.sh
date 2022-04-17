#!/bin/bash

wd=${PWD}
calcDIR=${wd}/calc
dataDIR=${wd}/data

# make any required dirs
mkdir -p ${calcDIR}

# Copy required files
cd $dataDIR

cp INCAR OPTCELL POSCAR POTCAR KPOINTS chgsum.pl bader run.sbatch $calcDIR/

cd $calcDIR
# bash run.sbatch
sbatch run.sbatch
