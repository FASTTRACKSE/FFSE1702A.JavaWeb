package fasttrackse.ffse1702a.fbms.quanlytailieu.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "icon")
public class Icon implements Serializable {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "ma_icon")
	private String ma_icon;
	
	@Column(name = "hinh_anh")
	private String hinh_anh;

	public Icon() {
		super();
	}

	public Icon(int id, String ma_icon, String hinh_anh) {
		super();
		this.id = id;
		this.ma_icon = ma_icon;
		this.hinh_anh = hinh_anh;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMa_icon() {
		return ma_icon;
	}

	public void setMa_icon(String ma_icon) {
		this.ma_icon = ma_icon;
	}

	public String getHinh_anh() {
		return hinh_anh;
	}

	public void setHinh_anh(String hinh_anh) {
		this.hinh_anh = hinh_anh;
	}
	
	
}
