#!/bin/bash
#SBATCH --account=priority-davidnidever
#SBATCH --partition=priority
#SBATCH --job-name=slurm_test_00
#SBATCH --output=/home/x25h971/slurm_examples_tempest/slurm_test_00.out
#SBATCH --error=/home/x25h971/slurm_examples_tempest/slurm_test_00.err
#SBATCH --cpus-per-task 2
#SBATCH --mem-per-cpu=1G
#SBATCH --time=00:10:00
#SBATCH --ntasks=1
#SBATCH --mail-user katiefasbender@montana.edu
#SBATCH --mail-type BEGIN
module load Anaconda3
source activate $HOME/condaenv/
python /home/x25h971/slurm_examples_tempest/slurm_test.py
wait
conda deactivate
