package fasttrackse.a1702.fbms.logwork.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tinh_trang")
public class TinhTrang {
	
	@Id
	@Column(name = "ma_tinh_trang", unique = true, nullable = false, length = 30)
	private String maTinhTrang;
	
	@Column(name = "ten_tinh_trang", nullable = false, length = 50)
	private String tenTinhTrang;
	
	@OneToMany(mappedBy = "tinhTrang")
	private List<DuAn> duAns;
	
	public TinhTrang() {
		
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

	public List<DuAn> getDuAns() {
		return duAns;
	}

	public void setDuAns(List<DuAn> duAns) {
		this.duAns = duAns;
	}

}
