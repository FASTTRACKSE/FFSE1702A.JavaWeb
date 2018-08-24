package fasttrackse.ffse1702a.fbms.quanlytailieu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tai_lieu")
public class Document {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "ten_tai_lieu")
	private String ten_tai_lieu;

	@Column(name = "tai_ve")
	private String tai_ve;
	
	@Column(name = "mo_ta")
	private String mo_ta;

	@Column(name = "ghi_chu")
	private String ghi_chu;

	@Column(name = "quyen_truy_cap")
	private String quyen_truy_cap;

	@ManyToOne
	@JoinColumn(name = "ma_danh_muc", referencedColumnName = "ma_danh_muc")
	private Category ma_danh_muc;

	public Category getMa_danh_muc() {
		return ma_danh_muc;
	}

	public void setMa_danh_muc(Category ma_danh_muc) {
		this.ma_danh_muc = ma_danh_muc;
	}

	@ManyToOne
	@JoinColumn(name = "ma_trang_thai", referencedColumnName = "ma_trang_thai")
	private Status ma_trang_thai;
	
	public Status getMa_trang_thai() {
		return ma_trang_thai;
	}

	public void setMa_trang_thai(Status ma_trang_thai) {
		this.ma_trang_thai = ma_trang_thai;
	}

	@ManyToOne
	@JoinColumn(name = "ma_icon", referencedColumnName = "ma_icon")
	private Icon ma_icon;

	public Icon getMa_icon() {
		return ma_icon;
	}

	public void setMa_icon(Icon ma_icon) {
		this.ma_icon = ma_icon;
	}

	// getter and setter
	 
	
	public String getMo_ta() {
		return mo_ta;
	}
	
	public void setMo_ta(String mo_ta) {
		this.mo_ta = mo_ta;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTen_tai_lieu() {
		return ten_tai_lieu;
	}

	public void setTen_tai_lieu(String ten_tai_lieu) {
		this.ten_tai_lieu = ten_tai_lieu;
	}

	public String getTai_ve() {
		return tai_ve;
	}

	public void setTai_ve(String tai_ve) {
		this.tai_ve = tai_ve;
	}

	public String getQuyen_truy_cap() {
		return quyen_truy_cap;
	}

	public void setQuyen_truy_cap(String quyen_truy_cap) {
		this.quyen_truy_cap = quyen_truy_cap;
	}

	public String getGhi_chu() {
		return ghi_chu;
	}

	public void setGhi_chu(String ghi_chu) {
		this.ghi_chu = ghi_chu;
	}

}
