package com.teamproject.entities;

import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

public class DuAn_KhachHang {
	@ManyToOne(fetch = FetchType.EAGER,cascade= CascadeType.MERGE)
	@JoinColumn(name="ma_khach_hang",referencedColumnName="ma_khach_hang", insertable=true, updatable=true)
	private KhachHang khachHang;;
	@ManyToOne(fetch = FetchType.EAGER,cascade= CascadeType.MERGE)
	@JoinColumn(name="ma_du_an",referencedColumnName="ma_du_an", insertable=true, updatable=true)
	private DuAn DuAn ;
	
}
