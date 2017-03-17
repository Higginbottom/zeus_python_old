#=======================================================================
#
#  MASTER MAKEFILE FOR ZEUS-2D CODE
#
#-------------------  object files  ------------------------------------
#
OBJ =  	util.o\
     msave.o    \
	bval.o     \
	bvalrad.o  \
	ct.o       \
	dataio.o   \
	derivs.o   \
	emfs.o     \
	empty.o    \
	findno.o   \
	fld.o      \
	ggen.o     \
	giccg.o    \
	gradv.o    \
	gravity.o  \
	hdfall.o   \
	iccgaf.o   \
	intchk.o   \
	lorentz.o  \
	maxmin.o   \
	moment.o   \
 	momx1.o    \
	momx2.o    \
	movie.o    \
	mprops.o   \
	mstart.o   \
	newgrid.o  \
	newvg.o    \
	newx1.o    \
	newx2.o    \
	nudt.o     \
	pdv.o      \
	pgas.o     \
	phibv.o    \
	printd.o   \
	restart.o  \
	rhs.o      \
	riccg.o    \
	setup.o    \
	srcstep.o  \
	strtoi.o   \
	stv1.o     \
	stv2.o     \
	stv3b3.o   \
	tav.o      \
	transprt.o \
	tranx1.o   \
	tranx2.o   \
	viscus.o   \
	vtos.o     \
	x1intfc.o  \
	x2intfc.o  \
	x1intzc.o  \
	x2intzc.o  \
	zeus2d.o   \
	bcdflt.o   \
	checkin.o  \
	linpck.o   \
	diskw.o   \
	diskwbc.o \
	heatcool.o \
	lookup.o \
	recipies.o 

#-------------------  macro definitions  -------------------------------
.SUFFIXES:
.SUFFIXES: .src .c .f .o
EXEDIR = ../exe/

PROB   = planetw
USER   = user
FC     = gfortran
OPTS   = -c -O3 
CC     = gcc
LDR    = gfortran


UNAME := $(shell uname)
UNAME1 := $(shell uname -n)


ifeq ($(UNAME), Darwin)
LIB    = /usr/local/lib/libmfhdf.a /usr/local/lib/libdf.a /usr/local/lib/libjpeg.a /usr/local/lib/libz.a  
endif
ifeq ($(UNAME1), endjinn)
LIB    = /usr/lib/libmfhdf.a /usr/lib/libdf.a /usr/lib/x86_64-linux-gnu/libjpeg.a /usr/lib/x86_64-linux-gnu/libz.a  
endif
ifeq ($(UNAME1), cyan01)
LIB    = /local/software/hdf4/4.2.9/gcc/lib/libmfhdf.a /local/software/hdf4/4.2.9/gcc/lib/libdf.a /usr/lib64/libjpeg.so /usr/lib64/libz.so 
endif


#LIB    = /usr/lib/libmfhdf.a /usr/lib/libdf.a \
	/usr/lib/x86_64-linux-gnu/libjpeg.a /usr/lib/x86_64-linux-gnu/libz.a  



#--------------------  implicit rules  ---------------------------------
.src.o:
	/usr/bin/cpp -P -traditional $< > $*.f
	${FC} ${OPTS} $*.f 
.c.o:
	${CC} -c ${OPTS} $<
#---------------------  targets  ---------------------------------------
help:
	@echo Type 'make compile' to generate ZEUS-2D executable
	@echo Type 'make clean'   to remove *.f and *.o files
#-----------------------------------------------------------------------
clean:
	rm *.o *.f
#-----------------------------------------------------------------------
#compile: ${OBJ}  
#	${LDR} -o  ${EXEDIR}zeus2d.exe ${OBJ}   ${LIB}





compile: zeus2d.src ${EXEDIR}zeus2d_lu.exe

zeus2d.src: zeus2d.def
	touch *.src *.c

${EXEDIR}zeus2d_lu.exe: ${OBJ}  ${ADDN}
	${LDR} -o ${EXEDIR}zeus2d_lu.exe ${OBJ}  ${ADDN} ${LIB}

