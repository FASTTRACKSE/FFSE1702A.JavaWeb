package fasttrackse.ffse1702a.fbms.QuanLyDuAn.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="vai_tro_thanh_vien")
public class DuAn_VaiTroThanhVien {
	@Id
	@Column(name="ma_vai_tro")
	private String ma_vai_tro;
	@Column(name="ten_vai_tro")
	private String ten_vai_tro;
	
	public DuAn_VaiTroThanhVien() {
		
	}

	public String getMa_vai_tro() {
		return ma_vai_tro;
	}

	public void setMa_vai_tro(String ma_vai_tro) {
		this.ma_vai_tro = ma_vai_tro;
	}

	public String getTen_vai_tro() {
		return ten_vai_tro;
	}

	public void setTen_vai_tro(String ten_vai_tro) {
		this.ten_vai_tro = ten_vai_tro;
	}

}
