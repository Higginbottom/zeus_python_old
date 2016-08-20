	INTEGER n_lu_temp,n_lu_xi
	
	REAL, dimension(501,501) :: hc_lu
	REAL, dimension(501) :: lu_xi
	REAL, dimension(501) ::lu_temp


	common /lookup_data/ n_lu_temp,n_lu_xi,hc_lu,lu_xi,lu_temp