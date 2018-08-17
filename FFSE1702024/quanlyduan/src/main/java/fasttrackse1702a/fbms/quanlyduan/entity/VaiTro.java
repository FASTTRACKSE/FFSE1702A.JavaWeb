package fasttrackse1702a.fbms.quanlyduan.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
@Entity
@Table(name="vai_tro_thanh_vien")
public class VaiTro {
	@Id
	@Column(name="ma_vai_tro")
	@NotEmpty
	private String maVaiTro;
	@Column(name="ten_vai_tro")
	@NotEmpty
	private String tenVaiTro;
	
	public String getMaVaiTro() {
		return maVaiTro;
	}
	public void setMaVaiTro(String maVaiTro) {
		this.maVaiTro = maVaiTro;
	}
	public String getTenVaiTro() {
		return tenVaiTro;
	}
	public void setTenVaiTro(String tenVaiTro) {
		this.tenVaiTro = tenVaiTro;
	}
	
}
