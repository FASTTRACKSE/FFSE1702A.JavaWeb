package fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
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
	@ManyToMany(targetEntity = HoSoNhanVien.class, mappedBy = "vaiTro", fetch = FetchType.EAGER)
	private Set<HoSoNhanVien> hoSoNhanVien;
	
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
	public Set<HoSoNhanVien> getHoSoNhanVien() {
		return hoSoNhanVien;
	}
	public void setHoSoNhanVien(Set<HoSoNhanVien> hoSoNhanVien) {
		this.hoSoNhanVien = hoSoNhanVien;
	}
	
}
