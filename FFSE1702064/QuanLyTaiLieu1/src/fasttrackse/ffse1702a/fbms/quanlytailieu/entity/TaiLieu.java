package fasttrackse.ffse1702a.fbms.quanlytailieu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Entity
@Table(name="TaiLieudatabase")
public class TaiLieu {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private Integer id;
	
	@Column(name="Name")
	private String name;
	
	@Column(name="LoaiTaiLieu")
	private String loaiTaiLieu;
	
	@Column(name="QuyenTruyCap")
	private String quyenTruyCap;
	
	@Column(name="MoTa")
	private String moTa;
	
	@Column(name="PhongBan")
	private String phongBan;
	
	@Column(name="TaiVe")
	private String taiVe;
	
	public String getTaiVe() {
		return taiVe;
	}

	public void setTaiVe(String taiVe) {
		this.taiVe = taiVe;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLoaiTaiLieu() {
		return loaiTaiLieu;
	}

	public void setLoaiTaiLieu(String loaiTaiLieu) {
		this.loaiTaiLieu = loaiTaiLieu;
	}

	public String getQuyenTruyCap() {
		return quyenTruyCap;
	}

	public void setQuyenTruyCap(String quyenTruyCap) {
		this.quyenTruyCap = quyenTruyCap;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public String getPhongBan() {
		return phongBan;
	}

	public void setPhongBan(String phongBan) {
		this.phongBan = phongBan;
	}
	
}
