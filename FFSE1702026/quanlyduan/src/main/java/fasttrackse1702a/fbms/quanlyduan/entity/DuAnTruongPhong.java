package fasttrackse1702a.fbms.quanlyduan.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

import org.hibernate.validator.constraints.Length;

@Entity
@Table(name="du_an")
public class DuAnTruongPhong {
	@Id
	@Column(name="ma_du_an")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer maDuAn;
	
	@Column(name="ten_du_an")
	@NotEmpty
	@Length(min=10,max=200)
	private String tenDuAn;
	@Column(name="is_delete")
	private int isDelete;
	@Column(name="update_link")
	private int grantUpdate;

	public Integer getMaDuAn() {
		return maDuAn;
	}

	public void setMaDuAn(Integer maDuAn) {
		this.maDuAn = maDuAn;
	}

	public String getTenDuAn() {
		return tenDuAn;
	}

	public void setTenDuAn(String tenDuAn) {
		this.tenDuAn = tenDuAn;
	}
	public int getIsDelete() {
		return isDelete;
	}
	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}

	public int getGrantUpdate() {
		return grantUpdate;
	}

	public void setGrantUpdate(int grantUpdate) {
		this.grantUpdate = grantUpdate;
	}
	
	
}
