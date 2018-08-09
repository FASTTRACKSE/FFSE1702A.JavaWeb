package namdv.model.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the ho_so_nhan_vien database table.
 * 
 */
@Entity
@Table(name="ho_so_nhan_vien")
@NamedQuery(name="HoSoNhanVien.findAll", query="SELECT h FROM HoSoNhanVien h")
public class HoSoNhanVien implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ma_nhan_vien", unique=true, nullable=false)
	private int maNhanVien;

	@Column(name="anh_dai_dien", nullable=false, length=100)
	private String anhDaiDien;

	@Column(name="dan_toc", nullable=false, length=50)
	private String danToc;

	@Column(nullable=false, length=50)
	private String email;

	@Column(name="gioi_tinh", nullable=false)
	private int gioiTinh;

	@Column(name="ho_dem", nullable=false, length=50)
	private String hoDem;

	@Column(name="ma_chuc_danh", nullable=false, length=30)
	private String maChucDanh;

	@Column(name="ma_phong_ban", nullable=false, length=30)
	private String maPhongBan;

	@Column(name="ma_quoc_tich", nullable=false, length=50)
	private String maQuocTich;

	@Column(name="ma_tinh_trang_hon_nhan", nullable=false)
	private int maTinhTrangHonNhan;

	@Temporal(TemporalType.DATE)
	@Column(name="nam_sinh", nullable=false)
	private Date namSinh;

	@Temporal(TemporalType.DATE)
	@Column(name="ngay_cap", nullable=false)
	private Date ngayCap;

	@Column(name="noi_cap", nullable=false, length=50)
	private String noiCap;

	@Column(name="noi_tam_tru", nullable=false, length=250)
	private String noiTamTru;

	@Column(name="que_quan", nullable=false, length=250)
	private String queQuan;

	@Column(name="so_cmnd", nullable=false, length=50)
	private String soCmnd;

	@Column(name="so_dien_thoai", nullable=false)
	private int soDienThoai;

	@Column(nullable=false, length=20)
	private String ten;

	@Column(name="trang_thai", nullable=false)
	private int trangThai;

	public HoSoNhanVien() {
	}

	public int getMaNhanVien() {
		return this.maNhanVien;
	}

	public void setMaNhanVien(int maNhanVien) {
		this.maNhanVien = maNhanVien;
	}

	public String getAnhDaiDien() {
		return this.anhDaiDien;
	}

	public void setAnhDaiDien(String anhDaiDien) {
		this.anhDaiDien = anhDaiDien;
	}

	public String getDanToc() {
		return this.danToc;
	}

	public void setDanToc(String danToc) {
		this.danToc = danToc;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getGioiTinh() {
		return this.gioiTinh;
	}

	public void setGioiTinh(int gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public String getHoDem() {
		return this.hoDem;
	}

	public void setHoDem(String hoDem) {
		this.hoDem = hoDem;
	}

	public String getMaChucDanh() {
		return this.maChucDanh;
	}

	public void setMaChucDanh(String maChucDanh) {
		this.maChucDanh = maChucDanh;
	}

	public String getMaPhongBan() {
		return this.maPhongBan;
	}

	public void setMaPhongBan(String maPhongBan) {
		this.maPhongBan = maPhongBan;
	}

	public String getMaQuocTich() {
		return this.maQuocTich;
	}

	public void setMaQuocTich(String maQuocTich) {
		this.maQuocTich = maQuocTich;
	}

	public int getMaTinhTrangHonNhan() {
		return this.maTinhTrangHonNhan;
	}

	public void setMaTinhTrangHonNhan(int maTinhTrangHonNhan) {
		this.maTinhTrangHonNhan = maTinhTrangHonNhan;
	}

	public Date getNamSinh() {
		return this.namSinh;
	}

	public void setNamSinh(Date namSinh) {
		this.namSinh = namSinh;
	}

	public Date getNgayCap() {
		return this.ngayCap;
	}

	public void setNgayCap(Date ngayCap) {
		this.ngayCap = ngayCap;
	}

	public String getNoiCap() {
		return this.noiCap;
	}

	public void setNoiCap(String noiCap) {
		this.noiCap = noiCap;
	}

	public String getNoiTamTru() {
		return this.noiTamTru;
	}

	public void setNoiTamTru(String noiTamTru) {
		this.noiTamTru = noiTamTru;
	}

	public String getQueQuan() {
		return this.queQuan;
	}

	public void setQueQuan(String queQuan) {
		this.queQuan = queQuan;
	}

	public String getSoCmnd() {
		return this.soCmnd;
	}

	public void setSoCmnd(String soCmnd) {
		this.soCmnd = soCmnd;
	}

	public int getSoDienThoai() {
		return this.soDienThoai;
	}

	public void setSoDienThoai(int soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getTen() {
		return this.ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public int getTrangThai() {
		return this.trangThai;
	}

	public void setTrangThai(int trangThai) {
		this.trangThai = trangThai;
	}

}