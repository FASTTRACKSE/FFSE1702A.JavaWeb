package fasttrackse.ffse1702a.fbms.quanlytailieu.dto;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class TaiLieuDTO {
	private Integer id;

	private String name;

	private String loaiTaiLieu;

	private String quyenTruyCap;

	private String moTa;

	private String phongBan;

	private String taiVe;

	private CommonsMultipartFile file;

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

	public CommonsMultipartFile getFile() {
		return file;
	}

	public void setFile(CommonsMultipartFile file) {
		this.file = file;
	}

}
