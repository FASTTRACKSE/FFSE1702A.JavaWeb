package fasttrackse.ffse1702a.fbms.entity;

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
@Table(name="quoc_tich")
public class QuocTich {
	@Id
	@Column(name="ma_quoc_tich")
	@NotEmpty
	private String maQuocTich;
	
	@Column(name="ten_quoc_tich")
	@NotEmpty
	private String tenQuocTich;
	
	public QuocTich() {
		super();
	}

	public QuocTich(@NotEmpty String maQuocTich, @NotEmpty String tenQuocTich) {
		super();
		this.maQuocTich = maQuocTich;
		this.tenQuocTich = tenQuocTich;
	}

	public String getMaQuocTich() {
		return maQuocTich;
	}

	public void setMaQuocTich(String maQuocTich) {
		this.maQuocTich = maQuocTich;
	}

	public String getTenQuocTich() {
		return tenQuocTich;
	}

	public void setTenQuocTich(String tenQuocTich) {
		this.tenQuocTich = tenQuocTich;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "quocTich",cascade=CascadeType.ALL)
	private Set<HoSo> hoSo = new HashSet<HoSo>(0);
}
