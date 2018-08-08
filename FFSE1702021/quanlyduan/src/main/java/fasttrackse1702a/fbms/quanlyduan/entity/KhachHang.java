package fasttrackse1702a.fbms.quanlyduan.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="khach_hang")
public class KhachHang {
	@Id
	@Column(name="ma_khach_hang",unique=true)
	private String maKhachHang;
	@Column(name="ten_khach_hang")
	private String tenKhachHang;
	@Column(name="dia_chi")
	private String diaChi;
	@Column(name="trung_tam")
	private String trungTam;
	public KhachHang() {
		
	}
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "maDuAn",cascade=CascadeType.MERGE)
	private Set<DuAn> duAn = new HashSet<DuAn>(0);
	
	

}
