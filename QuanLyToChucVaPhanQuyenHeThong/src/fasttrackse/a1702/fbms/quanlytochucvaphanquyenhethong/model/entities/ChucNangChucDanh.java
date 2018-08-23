package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name = "chuc_nang_chuc_danh")
public class ChucNangChucDanh {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private int id;

	@Column(name = "ma_chuc_danh", nullable = false, length = 100)
	@NotEmpty
	private String maChucDanh;

	@Column(name = "ma_chuc_nang", nullable = false, length = 100)
	@NotEmpty
	private String maChucNang;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMaChucDanh() {
		return maChucDanh;
	}

	public void setMaChucDanh(String maChucDanh) {
		this.maChucDanh = maChucDanh;
	}

	public String getMaChucNang() {
		return maChucNang;
	}

	public void setMaChucNang(String maChucNang) {
		this.maChucNang = maChucNang;
	}

	public ChucNangChucDanh(int id, @NotEmpty String maChucDanh, @NotEmpty String maChucNang) {
		super();
		this.id = id;
		this.maChucDanh = maChucDanh;
		this.maChucNang = maChucNang;
	}
	
	public ChucNangChucDanh(@NotEmpty String maChucDanh, @NotEmpty String maChucNang) {
		super();
		this.maChucDanh = maChucDanh;
		this.maChucNang = maChucNang;
	}

	public ChucNangChucDanh() {
		super();
	}

	@Override
	public String toString() {
		return "ChucNangChucDanh [id=" + id + ", maChucDanh=" + maChucDanh + ", maChucNang=" + maChucNang + "]";
	}
	
}
