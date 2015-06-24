      REAL   d(in,jn),  e(in,jn),  p(in,jn), v1(in,jn), v2(in,jn)
	  REAL   xi(in,jn), e_old(in,jn), hc_comp(in,jn),hc_xray(in,jn)
	  REAL   hc_line(in,jn),hc_brem(in,jn),t_old(in,jn),adiab(in,jn)
	  REAL   divv1(in,jn),v1_pdv(in,jn),v2_pdv(in,jn)
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

      common /fieldr/  d ,  e,  p, v1, v2
	  common /fieldr/  xi , e_old, t_old,adiab
	  common /fieldr/  hc_comp,hc_xray,hc_line,hc_brem
		  common /fieldr/ divv1,v1_pdv,v2_pdv
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
