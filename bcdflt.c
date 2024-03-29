#include "zeus2d.def"
#ifdef UNICOS
/**********************************************************************/
BCDFLT(in,x,ioff,n)
int *in;
float *x;
int *ioff,*n;
/*
  Convert a character string into a floating point number.
----------------------------------------------------------------------*/
{
  char buf[80],*p,*q;
  int i;
  double atof();

  strncpy(buf,(char *)in + *ioff,*n);
  *x = atof(buf);
}
#else
/**********************************************************************/
bcdflt_(in,x,ioff,n)
int *in;
float *x;
int *ioff,*n;
/*
  Convert a character string into a floating point number.
----------------------------------------------------------------------*/
{
  char buf[80],*p,*q;
  int i;
  double atof();

  strncpy(buf,(char *)in + *ioff,*n);
  *x = atof(buf);
}
#endif
