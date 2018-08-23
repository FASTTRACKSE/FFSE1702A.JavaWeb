package fasttrackse.ffse1702a.fbms.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "ngay_nghi")
public class NgayNghiEntity {
	
	@OneToMany(mappedBy = "ngaynghientity")
	
	private List<DanhSachXinNghiEntity> DanhSachXinNghiEntity;

	public List<DanhSachXinNghiEntity> getDanhSachXinNghiEntity() {
		return DanhSachXinNghiEntity;
	}

	public void setDanhSachXinNghiEntity(List<DanhSachXinNghiEntity> danhSachXinNghiEntity) {
		DanhSachXinNghiEntity = danhSachXinNghiEntity;
	}

	@Id
	@Column(name = "ma_nhan_vien")
	private Integer ma_nhan_vien;

	@Column(name = "so_ngay_da_nghi")
	private Integer so_ngay_da_nghi;

	@Column(name = "so_ngay_con_lai")
	private Integer so_ngay_con_lai;

	public Integer getMa_nhan_vien() {
		return ma_nhan_vien;
	}

	public void setMa_nhan_vien(Integer ma_nhan_vien) {
		this.ma_nhan_vien = ma_nhan_vien;
	}

	public Integer getSo_ngay_da_nghi() {
		return so_ngay_da_nghi;
	}

	public void setSo_ngay_da_nghi(Integer so_ngay_da_nghi) {
		this.so_ngay_da_nghi = so_ngay_da_nghi;
	}

	public Integer getSo_ngay_con_lai() {
		return so_ngay_con_lai;
	}

	public void setSo_ngay_con_lai(Integer so_ngay_con_lai) {
		this.so_ngay_con_lai = so_ngay_con_lai;
	}

}
