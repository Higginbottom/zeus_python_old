      REAL   d(in,jn),  e(in,jn),  p(in,jn), v1(in,jn), v2(in,jn)
      REAL   pdv_heat(in,jn)
#ifdef ROTATE
      REAL  v3(in,jn)
#endif
#ifdef GRAV
      REAL phi(in,jn)
#endif
#ifdef MHD
      REAL  b1(in,jn), b2(in,jn), b3(in,jn)
#endif
#ifdef RAD
      REAL  er(in,jn) 
#endif

      common /fieldr/  d ,  e,  p, v1, v2, pdv_heat
#ifdef ROTATE
      common /fieldr/  v3
#endif
#ifdef GRAV
      common /fieldr/ phi
#endif
#ifdef MHD
      common /fieldr/  b1, b2, b3
#endif
#ifdef RAD
      common /fieldr/  er 
#endif
