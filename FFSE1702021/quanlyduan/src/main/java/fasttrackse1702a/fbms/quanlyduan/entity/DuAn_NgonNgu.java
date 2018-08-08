package fasttrackse1702a.fbms.quanlyduan.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ngon_ngu")
public class DuAn_NgonNgu {
	@Id
	@Column(name="ma_ngon_ngu")
	private String ma_ngon_ngu;
	@Column(name="ten_ngon_ngu")
	private String ten_ngon_ngu;
	
	public DuAn_NgonNgu(){
		
	}
	
	public String getMa_ngon_ngu() {
		return ma_ngon_ngu;
	}
	public void setMa_ngon_ngu(String ma_ngon_ngu) {
		this.ma_ngon_ngu = ma_ngon_ngu;
	}
	public String getTen_ngon_ngu() {
		return ten_ngon_ngu;
	}
	public void setTen_ngon_ngu(String ten_ngon_ngu) {
		this.ten_ngon_ngu = ten_ngon_ngu;
	}
}
