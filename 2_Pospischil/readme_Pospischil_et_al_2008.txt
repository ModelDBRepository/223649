This is to replicate Fig.A3A in Alturki et al., 2016

AFTER YOU COMPILE THE FILES (see below):

ORIGINAL
To run the original model of Pospischil et al:
1- Click on mosinit.hoc, several windows will automatically pop up
2- Select IClamp from the "I/V Clamp Electrode" window
3- Select the cell type from the list in the "Simulations of cortical cells" window, we studied 4 cell types:
	- RS cell (the 1st one in the list)
	- Bursting (2nd in the list)
	- Low Threshold Spiking LTS (4th in the list)
	- FS (5th in the list)
4- After selecting the cell type, click on Init & Run fom the "RunControl" window

SEGREGATED
To run the segregated model of Pospischil et al:
1- Click on mosinit.hoc, several windows will automatically pop up
2- Select IClamp from the "I/V Clamp Electrode" window
3- Select the cell type from the list in the "Simulations of cortical cells" window.We studied 4 cell types:
	- RS cell (the 1st one in the list)
	- Bursting (2nd in the list)
	- Low Threshold Spiking LTS (4th in the list)
	- FS (5th in the list)
4- After selecting the cell type, click on Init & Run fom the "RunControl" window

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
