#!/bin/bash
jobName="dry-run"
wd=${PWD}
calcDIR=${wd}/calc-$jobName
dataDIR=${wd}/data

# make any required dirs
mkdir -p ${calcDIR}

# Copy required files
cd $dataDIR
cp INCAR OPTCELL POSCAR POTCAR KPOINTS run.sbatch $calcDIR/

cd $calcDIR
chmod +x ./run.sbatch
./run.sbatch

# Stop it after 10 to 15 seconds. 
