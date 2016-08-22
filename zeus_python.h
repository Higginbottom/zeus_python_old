	INTEGER n_lu_temp,n_lu_xi
	
	REAL, dimension(nt,nxi) :: hc_lu
	REAL, dimension(nt,nxi) :: comp_h_lu
	REAL, dimension(nt,nxi) :: comp_c_lu
	REAL, dimension(nt,nxi) :: line_c_lu
	REAL, dimension(nt,nxi) :: xray_h_lu
	REAL, dimension(nt,nxi) :: brem_c_lu
		
		
		
		
		
	REAL, dimension(nxi) :: lu_xi
	REAL, dimension(nt) ::lu_temp
	LOGICAL main_heatcool,indiv_heatcool


	common /lookup_data/ n_lu_temp,n_lu_xi,hc_lu,lu_xi,lu_temp,
     +  comp_h_lu,comp_c_lu,line_c_lu,xray_h_lu,brem_c_lu,
     +  main_heatcool,indiv_heatcool