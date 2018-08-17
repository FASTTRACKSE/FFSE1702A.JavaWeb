package fasttrackse.ffse1702a.fbms.quanlytailieu.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "danh_muc")
public class Category implements Serializable {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "ten_danh_muc")
	private String ten_danh_muc;

	@Column(name = "ma_danh_muc")
	private String ma_danh_muc;
	
	public Category() {
		super();
	}

	public Category(int id, String ten_danh_muc, String ma_danh_muc) {
		super();
		this.id = id;
		this.ten_danh_muc = ten_danh_muc;
		this.ma_danh_muc = ma_danh_muc;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTen_danh_muc() {
		return ten_danh_muc;
	}

	public void setTen_danh_muc(String ten_danh_muc) {
		this.ten_danh_muc = ten_danh_muc;
	}

	public String getMa_danh_muc() {
		return ma_danh_muc;
	}

	public void setMa_danh_muc(String ma_danh_muc) {
		this.ma_danh_muc = ma_danh_muc;
	}
	
}
