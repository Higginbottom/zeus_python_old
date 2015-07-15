#=======================================================================
#
#  MASTER MAKEFILE FOR ZEUS-2D CODE
#
#-------------------  object files  ------------------------------------
#
OBJ =   msave.o    \
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
	heatcool.o 
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
#LIB    = /opt/local/lib/libmfhdf.a /opt/local/lib/libdf.a \
	/opt/local/lib/libjpeg.a /opt/local/lib/libz.a  
LIB    = /opt/local/lib/libmfhdf.a /opt/local/lib/libdf.a \
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





compile: zeus2d.src ${EXEDIR}zeus2d.exe

zeus2d.src: zeus2d.def
	touch *.src *.c

${EXEDIR}zeus2d.exe: ${OBJ}  ${ADDN}
	${LDR} -o ${EXEDIR}zeus2d.exe ${OBJ}  ${ADDN} ${LIB}

