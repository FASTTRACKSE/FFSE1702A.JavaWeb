package fasttrackse1702a.fbms.quanlyduan.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="du_an")
public class DuAn {
	@Id
	@Column(name="ma_du_an")
	private String maDuAn;
	@Column(name="ten_du_an")
	private String tenDuAn;
	@ManyToOne(fetch = FetchType.EAGER,cascade= CascadeType.MERGE)
	@JoinColumn(name="ma_khach_hang",referencedColumnName="ma_khach_hang", insertable=true, updatable=true)
	private KhachHang khachHang ;
	@Column(name="mo_ta_du_an")
	private String moTaDuAn;
	@Column (name="tinh_trang")
	private String tinhTrang;
}
