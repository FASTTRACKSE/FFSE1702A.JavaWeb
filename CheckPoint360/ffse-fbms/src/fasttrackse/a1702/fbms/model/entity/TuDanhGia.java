package fasttrackse.a1702.fbms.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.OneToOne;


@Entity
@Table(name= "tu_danh_gia")
public class TuDanhGia {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@OneToOne
	@JoinColumn(name="ma_nhan_vien")
	private HoSoNhanVien hoSoNhanVien;
	
	@ManyToOne
	@JoinColumn(name="ma_phong_ban")
	private PhongBan phongBan;
	
	@Column(name="ky_danh_gia")
	private String kyDanhGia;
	
	@Column(name="dg_ky_luat")
	private int dgKyLuat;
	
	@Column(name="mt_ky_luat")
	private String mtKyLuat;
	
	@Column(name="dg_tinh_than")
	private int dgTinhThan;
	
	@Column(name="mt_tinh_than")
	private String mtTinhThan;
	
	@Column(name="dg_kl_cong_viec")
	private int dgKlCongViec;
	
	@Column(name="mt_kl_cong_viec")
	private String mtKlCongViec;
	
	@Column(name="dg_ket_qua")
	private int dgKetQua;
	
	@Column(name="mt_ket_qua")
	private String mtKetQua;
	
	@Column(name="dg_ky_nang")
	private int dgKyNang;
	
	@Column(name="mt_ky_nang")
	private String mtKyNang;
	
	@Column(name="dinh_huong")
	private String dinhHuong;
	
	@Column(name="tong_the")
	private int tongThe;
	
	@Column(name="trang_thai")
	private String trangThai;
	
	public TuDanhGia() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public HoSoNhanVien getHoSoNhanVien() {
		return hoSoNhanVien;
	}

	public void setHoSoNhanVien(HoSoNhanVien hoSoNhanVien) {
		this.hoSoNhanVien = hoSoNhanVien;
	}

	public PhongBan getPhongBan() {
		return phongBan;
	}

	public void setPhongBan(PhongBan phongBan) {
		this.phongBan = phongBan;
	}

	public String getKyDanhGia() {
		return kyDanhGia;
	}

	public void setKyDanhGia(String kyDanhGia) {
		this.kyDanhGia = kyDanhGia;
	}

	public int getDgKyLuat() {
		return dgKyLuat;
	}

	public void setDgKyLuat(int dgKyLuat) {
		this.dgKyLuat = dgKyLuat;
	}

	public String getMtKyLuat() {
		return mtKyLuat;
	}

	public void setMtKyLuat(String mtKyLuat) {
		this.mtKyLuat = mtKyLuat;
	}

	public int getDgTinhThan() {
		return dgTinhThan;
	}

	public void setDgTinhThan(int dgTinhThan) {
		this.dgTinhThan = dgTinhThan;
	}

	public String getMtTinhThan() {
		return mtTinhThan;
	}

	public void setMtTinhThan(String mtTinhThan) {
		this.mtTinhThan = mtTinhThan;
	}

	public int getDgKlCongViec() {
		return dgKlCongViec;
	}

	public void setDgKlCongViec(int dgKlCongViec) {
		this.dgKlCongViec = dgKlCongViec;
	}

	public String getMtKlCongViec() {
		return mtKlCongViec;
	}

	public void setMtKlCongViec(String mtKlCongViec) {
		this.mtKlCongViec = mtKlCongViec;
	}

	public int getDgKetQua() {
		return dgKetQua;
	}

	public void setDgKetQua(int dgKetQua) {
		this.dgKetQua = dgKetQua;
	}

	public String getMtKetQua() {
		return mtKetQua;
	}

	public void setMtKetQua(String mtKetQua) {
		this.mtKetQua = mtKetQua;
	}

	public int getDgKyNang() {
		return dgKyNang;
	}

	public void setDgKyNang(int dgKyNang) {
		this.dgKyNang = dgKyNang;
	}

	public String getMtKyNang() {
		return mtKyNang;
	}

	public void setMtKyNang(String mtKyNang) {
		this.mtKyNang = mtKyNang;
	}

	public String getDinhHuong() {
		return dinhHuong;
	}

	public void setDinhHuong(String dinhHuong) {
		this.dinhHuong = dinhHuong;
	}

	public int getTongThe() {
		return tongThe;
	}

	public void setTongThe(int tongThe) {
		this.tongThe = tongThe;
	}

	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}
	
	
	
}
