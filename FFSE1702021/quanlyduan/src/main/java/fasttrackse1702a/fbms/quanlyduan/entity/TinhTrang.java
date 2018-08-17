package fasttrackse1702a.fbms.quanlyduan.entity;

import java.io.Serializable;
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
@Table(name="tinh_trang")
public class TinhTrang implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="ma_tinh_trang")
	@NotEmpty
	private String maTinhTrang;

	@Column(name="ten_tinh_trang")
	@NotEmpty
	private String tenTinhTrang;
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "tinhTrang",cascade=CascadeType.MERGE)
	private Set<DuAn> duAn = new HashSet<DuAn>(0);
	public TinhTrang() {
		super();
	}
	

	public TinhTrang(String maTinhTrang, String tenTinhTrang) {
		super();
		this.maTinhTrang = maTinhTrang;
		this.tenTinhTrang = tenTinhTrang;
	}

	@OneToMany
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


	public Set<DuAn> getDuAn() {
		return duAn;
	}


	public void setDuAn(Set<DuAn> duAn) {
		this.duAn = duAn;
	}
	
	

	
	
}
