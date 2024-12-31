#!/bin/bash

#SBATCH --nodes=1
#SBATCH --time=1-00:00:00
#SBATCH --ntasks-per-node=64
#SBATCH --cluster=smp
#SBATCH --partition=smp
#SBATCH --constraint=amd,genoa

source activate /ihome/jdeblois/arg135/envs/my_env
gap cusped333O2_4.g

crc-job-stats
