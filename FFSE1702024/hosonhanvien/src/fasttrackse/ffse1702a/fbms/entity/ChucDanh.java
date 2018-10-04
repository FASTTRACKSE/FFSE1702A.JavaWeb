package fasttrackse.ffse1702a.fbms.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name="chuc_danh")

public class ChucDanh {

	@Id
	@Column(name="ma_chuc_danh")
	@NotEmpty
	private String maChucDanh;
	
	@Column(name="ten_chuc_danh")
	@NotEmpty
	private String tenChucDanh;
	
	public ChucDanh() {
		super();
	}
	
	

	public ChucDanh(String maChucDanh,String tenChucDanh) {
		super();
		this.maChucDanh = maChucDanh;
		this.tenChucDanh = tenChucDanh;
	}

	public String getMaChucDanh() {
		return maChucDanh;
	}

	public void setMaChucDanh(String maChucDanh) {
		this.maChucDanh = maChucDanh;
	}

	public String getTenChucDanh() {
		return tenChucDanh;
	}

	public void setTenChucDanh(String tenChucDanh) {
		this.tenChucDanh = tenChucDanh;
	}
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "chucDanh",cascade=CascadeType.ALL)
	private Set<HoSo> hoSo = new HashSet<HoSo>(0);
}
