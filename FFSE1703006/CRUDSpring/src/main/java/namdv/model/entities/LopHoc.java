package namdv.model.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the lop_hoc database table.
 * 
 */
@Entity
@Table(name="lop_hoc")
@NamedQuery(name="LopHoc.findAll", query="SELECT l FROM LopHoc l")
public class LopHoc implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ma_lop", unique=true, nullable=false, length=16)
	private String maLop;

	@Column(name="ten_lop", nullable=false, length=32)
	private String tenLop;

	public LopHoc() {
	}

	public String getMaLop() {
		return this.maLop;
	}

	public void setMaLop(String maLop) {
		this.maLop = maLop;
	}

	public String getTenLop() {
		return this.tenLop;
	}

	public void setTenLop(String tenLop) {
		this.tenLop = tenLop;
	}

}