This is to replicate Fig.5 in Alturki et al., 2016

ORIGINAL
To run the original model of 1-comp LA model:
1- Click on main_LTO.hoc, to replicate all "original" curves in Fig.5A
2- Open main.hoc with any text editor, change cell type in Line 8 with one of the three: Cell_A(),Cell_B() and Cell_C(). Then close editor,
   and click on main.hoc, to replicate all "original" curves in Fig.5B with corresponding cell type.



SEGREGATED
To run the segregated model of 1-comp LA model:
1- Click on main_LTO.hoc, to replicate all "segregated" curves in Fig.5A
2- Open main.hoc with any text editor, change cell type in Line 8 with one of the three: Cell_A(),Cell_B() and Cell_C(). Then close editor,
   and click on main.hoc, to replicate all "original" curves in Fig.5B with corresponding cell type.
3- Click on main_HTO.hoc, to replicate all "segregated" curves in Fig.5C


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
