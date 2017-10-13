
MPICC    = mpicc
CFLAGS   = -g -Wall -O3
CPPFLAGS = 
LIBS     = 

MPIRUN    = mpirun
N         = 4
MPIRUNCMD = $(MPIRUN) -np $(N)

RM       = rm -f

%.o: %.c
	$(MPICC) $(CPPFLAGS) $(CFLAGS) -c -o $@ $<

ex05: ex05.o
	$(MPICC) -o $@ $^ $(LIBS)

runex05: ex05
	$(MPIRUNCMD) $(abspath $<)

clean:
	$(RM) *.o ex05

.PHONY: clean runex05
