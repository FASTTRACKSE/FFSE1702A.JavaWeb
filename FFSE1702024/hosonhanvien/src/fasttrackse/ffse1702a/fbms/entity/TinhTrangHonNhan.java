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
@Table(name="tinh_trang_hon_nhan")
public class TinhTrangHonNhan {
	@Id
	@Column(name="ma_tinh_trang")
	@NotEmpty
	private String maTinhTrang;
	
	@Column(name="ten_tinh_trang")
	@NotEmpty
	private String tenTinhTrang;
	
	public TinhTrangHonNhan() {
		super();
	}

	public TinhTrangHonNhan(@NotEmpty String maTinhTrang, @NotEmpty String tenTinhTrang) {
		super();
		this.maTinhTrang = maTinhTrang;
		this.tenTinhTrang = tenTinhTrang;
	}

	public String getMaTinhTrang() {
		return maTinhTrang;
	}

	public void setMaTinhTrang(String maTinhTrang) {
		this.maTinhTrang = maTinhTrang;
	}

	public String getTenTinhTrang() {
		return tenTinhTrang;
	}

	public void setTenTinhTrang(String tenTinhTrang) {
		this.tenTinhTrang = tenTinhTrang;
	}
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "tinhTrangHonNhan",cascade=CascadeType.ALL)
	private Set<HoSo> hoSo = new HashSet<HoSo>(0);
}
