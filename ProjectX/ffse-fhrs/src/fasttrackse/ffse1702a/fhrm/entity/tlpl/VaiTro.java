package fasttrackse.ffse1702a.fhrm.entity.tlpl;

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
@Table(name="vai_tro_thanh_vien")
public class VaiTro {
	@Id
	@Column(name="ma_vai_tro")
	private String maVaiTro;
	
	@Column(name="ten_vai_tro")
	private String tenVaiTro;
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "vaiTro",cascade=CascadeType.ALL)
	private Set<HoSo> hoso = new HashSet<HoSo>(0);
	public String getMaVaiTro() {
		return maVaiTro;
	}

	public void setMaVaiTro(String maVaiTro) {
		this.maVaiTro = maVaiTro;
	}

	public String getTenVaiTro() {
		return tenVaiTro;
	}

	public void setTenVaiTro(String tenVaiTro) {
		this.tenVaiTro = tenVaiTro;
	}

	public Set<HoSo> getHoso() {
		return hoso;
	}

	public void setHoso(Set<HoSo> hoso) {
		this.hoso = hoso;
	}
	
}
