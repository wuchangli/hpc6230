Exercise 05: MPI Benchmarks
===========================

Due: Friday, October 13, 2017 at 11:55 p.m.

10 points + 5 extra credit points available

---

1. Get MPI on your laptop/workstation if you haven't.  

- Even when we are designing code for a remote system it is useful to
  develop/debug locally:
    - Faster turn around time
    - Doesn't burn allocation hours

2. (4 points) Complete the `TODO`s in `ex05.c` to get timings for
   point-to-point and collective operations.

3. (3 points) Run your timing routine on `stampede2`
  
- Figure out how to login to `login.xsede.org` (see [the portal](https://portal.xsede.org))
- Use `gsissh` from `login.xsede.org` to log in to `stampede2`
- Use whatever means you want (`scp`, `git`) to copy your version of `ex05.c` to
  `stampede2`
- Use the provided slurm example script
- **KEEP YOUR WALLTIME LOW** Start with `$SBATCH -t 00:05:00`.  We only have
  so much time to share.

4. (3 points) For each of the communication routines, you will get reported bandwidths (B/s)
   for various *message sizes* and *total sizes*, create one plot:

- x-axis: Message size
- y-axis: Bandwidth
- One line for each communication routine: use the *maximum* bandwidth over all *total sizes*
  for a fixed *message size*

5. Create a pdf `ex05.pdf` with your plots and a listing of your code, submit
   the pdf to T-Square.

6. **(5 extra credit points)**: Include a screenshot of a `jumpshot` OR `hpctraceviewer` visualization of your program.

