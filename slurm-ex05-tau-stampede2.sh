#!/bin/sh
#SBATCH  -J ex05                         # Job name
#SBATCH  -p development                  # Queue (development or normal)
#SBATCH  -N 1                            # Number of nodes
#SBATCH --tasks-per-node 272             # Number of tasks per node
#SBATCH  -t 00:05:00                     # Time limit hrs:min:sec
#SBATCH  -A TG-TRA170035                 # My node alone
#SBATCH  -o ex05-%j.out                  # Standard output and error log

pwd; hostname; date

module load tau

make runex05 MPIRUNCMD="TAU_TRACE=1 ibrun tacc_affinity tau_exec"

date
