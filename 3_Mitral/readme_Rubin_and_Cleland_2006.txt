This is to replicate Fig.A3B in Alturki et al., 2016

ORIGINAL
To run the original model of Rubin and Cleland:
1- Click on mosinit.hoc.
2- In the long poped-up window, click on the third icon from top (Figure 2A Bottom).
	* This is the same plot that we show in figure A3 (middle trace).
	* The injected current is 200 pA, and duration is 1200 ms.

SEGREGATED
To run the segregated model of Rubin and Cleland:
1- Click on mosinit.hoc.
2- In the long poped-up window, click on the third icon from top (Figure 2A Bottom).
	* This is the same plot that we show in figure A3 of Alturki et al. 2016 (middle trace).
	* The injected current is 200 pA, and duration is 1200 ms.

____________________________________________________________________________
TO COMPILE AND RUN THE MODEL IN THE FOLDERS 'ORIGINAL' OR 'SEGREGATED' DO THE FOLLOWING:

Under unix systems:
to compile the mod files use the command 
nrnivmodl 
and run the simulation hoc file with the command 
nrngui FILENAME.hoc

Under Windows systems:
to compile the mod files use the "mknrndll" command.
A double click on the simulation file
FILENAME.hoc 
will open the simulation window.

Under MAC OS X:
Drag and drop the FILE folder onto the mknrndll icon in the NEURON
application folder. When the mod files are finished compiling, double click on the simulation file FILENAME.hoc
