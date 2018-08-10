package fasttrackse1702a.fbms.quanlyduan.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="ngon_ngu_du_an")
public class DuAn_NgonNgu implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@ManyToOne(fetch = FetchType.EAGER,cascade= CascadeType.MERGE)
	@JoinColumn(name="ma_du_an",referencedColumnName="ma_du_an", insertable=true, updatable=true)
	private DuAn duAn ;
	@Id
	@ManyToOne(fetch = FetchType.EAGER,cascade= CascadeType.MERGE)
	@JoinColumn(name="ma_ngon_ngu",referencedColumnName="ma_ngon_ngu", insertable=true, updatable=true)
	private NgonNgu ngonNgu ;
	
	public DuAn_NgonNgu(){
		
	}

	public DuAn getDuAn() {
		return duAn;
	}

	public void setDuAn(DuAn duAn) {
		this.duAn = duAn;
	}

	public NgonNgu getNgonNgu() {
		return ngonNgu;
	}

	public void setNgonNgu(NgonNgu ngonNgu) {
		this.ngonNgu = ngonNgu;
	}
	
	
}
