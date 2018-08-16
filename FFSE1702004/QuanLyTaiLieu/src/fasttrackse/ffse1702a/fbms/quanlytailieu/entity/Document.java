package fasttrackse.ffse1702a.fbms.quanlytailieu.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tai_lieu" )
public class Document implements Serializable {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "ten_tai_lieu")
	private String ten_tai_lieu;
	
	@Column(name = "file")
	private String file;
	
	@Column(name = "tai_ve")
	private String tai_ve;
	
	@Column(name = "mo_ta")
	private String mo_ta;
	
	@Column(name = "quyen_truy_cap")
	private String quyen_truy_cap;
	
	@Column(name = "phong_ban")
	private String phong_ban;
	
	@ManyToOne
    @JoinColumn(name = "ma_danh_muc", referencedColumnName = "ma_danh_muc")
	private Category ma_danh_muc;
	
	@ManyToOne
    @JoinColumn(name = "ma_trang_thai", referencedColumnName = "ma_trang_thai")
	private Status ma_trang_thai;
	
	@ManyToOne
    @JoinColumn(name = "ma_icon", referencedColumnName = "ma_icon")
	private Icon ma_icon;
	
	//constructors
	public Document() {
		super();
	}
	public Document(int id, String ten_tai_lieu, String file, String tai_ve, String mo_ta, String quyen_truy_cap,
			String phong_ban, Category ma_danh_muc, Status ma_trang_thai, Icon ma_icon) {
		super();
		this.id = id;
		this.ten_tai_lieu = ten_tai_lieu;
		this.file = file;
		this.tai_ve = tai_ve;
		this.mo_ta = mo_ta;
		this.quyen_truy_cap = quyen_truy_cap;
		this.phong_ban = phong_ban;
		this.ma_danh_muc = ma_danh_muc;
		this.ma_trang_thai = ma_trang_thai;
		this.ma_icon = ma_icon;
	}

	//getter and setter
	public Status getMa_trang_thai() {
		return ma_trang_thai;
	}

	public Icon getMa_icon() {
		return ma_icon;
	}

	public void setMa_icon(Icon ma_icon) {
		this.ma_icon = ma_icon;
	}

	public void setMa_trang_thai(Status ma_trang_thai) {
		this.ma_trang_thai = ma_trang_thai;
	}

	public Category getMa_danh_muc() {
		return ma_danh_muc;
	}

	public void setMa_danh_muc(Category ma_danh_muc) {
		this.ma_danh_muc = ma_danh_muc;
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

	public String getMo_ta() {
		return mo_ta;
	}

	public void setMo_ta(String mo_ta) {
		this.mo_ta = mo_ta;
	}

	public String getQuyen_truy_cap() {
		return quyen_truy_cap;
	}

	public void setQuyen_truy_cap(String quyen_truy_cap) {
		this.quyen_truy_cap = quyen_truy_cap;
	}

	public String getPhong_ban() {
		return phong_ban;
	}

	public void setPhong_ban(String phong_ban) {
		this.phong_ban = phong_ban;
	}
	
	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}
	
}
