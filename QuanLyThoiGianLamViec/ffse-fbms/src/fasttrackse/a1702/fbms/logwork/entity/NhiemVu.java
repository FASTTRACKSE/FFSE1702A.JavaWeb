package fasttrackse.a1702.fbms.logwork.entity;

import java.util.List;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "nhiem_vu")
//@AssociationOverrides({
//		@AssociationOverride(
//				name = "pk.NhanVien", 
//				joinColumns = @JoinColumn(name = "ma_nhan_vien")
//				),
//		@AssociationOverride(
//				name = "pk.DuAn",
//				joinColumns = @JoinColumn(name = "ma_du_an")
//				)
//		})
public class NhiemVu {

	@EmbeddedId
	private NhiemVuID pk = new NhiemVuID();
	
	@OneToMany(targetEntity = ThoiGianLamViec.class, mappedBy = "nhiemVu")
	private List<ThoiGianLamViec> thoiGianLamViecs;
	
	@ManyToOne
	@JoinColumn(name = "ma_vai_tro")
	private VaiTro vaiTro;

//	public NhiemVuID getPk() {
//		return pk;
//	}

//	public void setPk(NhiemVuID pk) {
//		this.pk = pk;
//	}

	public VaiTro getVaiTro() {
		return vaiTro;
	}

	public void setVaiTro(VaiTro vaiTro) {
		this.vaiTro = vaiTro;
	}
	
//	@Transient
//	public NhanVien getNhanVien() {
//		return getPk().getNhanVien();
//	}
//	
//	public void setNhanVien(NhanVien nhanVien) {
//		getPk().setNhanVien(nhanVien);
//	}
	
//	@Transient
//	public DuAn getDuAn() {
//		return getPk().getDuAn();
//	}
//	
//	public void setDuAn(DuAn duAn) {
//		getPk().setDuAn(duAn);
//	}
}
