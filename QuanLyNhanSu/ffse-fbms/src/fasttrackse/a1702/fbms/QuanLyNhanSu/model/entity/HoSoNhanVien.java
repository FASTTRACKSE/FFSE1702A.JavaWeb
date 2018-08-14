package fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * The persistent class for the ho_so_nhan_vien database table.
 * 
 */
@Entity
@Table(name = "ho_so_nhan_vien")
public class HoSoNhanVien implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ma_nhan_vien", unique = true, nullable = false)
	private int maNhanVien;

	@Column(name = "anh_dai_dien", nullable = false, length = 100)
	@NotEmpty
	private String anhDaiDien;

	@Column(name = "dan_toc", nullable = false, length = 50)
	@NotEmpty
	private String danToc;

	@Column(nullable = false, length = 50)
	@NotEmpty
	@Email
	private String email;

	@Column(name = "gioi_tinh", nullable = false)
	@NotNull
	private Integer gioiTinh;

	@Column(name = "ho_dem", nullable = false, length = 50)
	@NotEmpty
	private String hoDem;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "nam_sinh", nullable = false)
	@NotNull
	private Date namSinh;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "ngay_cap", nullable = false)
	@NotNull
	private Date ngayCap;

	@Column(name = "noi_cap", nullable = false, length = 50)
	@NotEmpty
	private String noiCap;

	@Column(name = "noi_tam_tru", nullable = false, length = 250)
	@NotEmpty
	private String noiTamTru;

	@Column(name = "que_quan", nullable = false, length = 250)
	@NotEmpty
	private String queQuan;

	@Column(name = "so_cmnd", nullable = false, length = 9)
	@Size(min = 9, max = 9)
	private String soCmnd;

	@Column(name = "so_dien_thoai", nullable = false, length = 11)
	@Size(min = 10, max = 11)
	private String soDienThoai;

	@Column(nullable = false, length = 20)
	@NotEmpty
	private String ten;

	@Column(name = "trang_thai", nullable = false)
	@NotNull
	private Integer trangThai;

	// bi-directional many-to-one association to PhongBan
	@ManyToOne
	@JoinColumn(name = "ma_phong_ban", nullable = false)
	@NotNull
	private PhongBan phongBan;

	// bi-directional many-to-one association to ChucDanh
	@ManyToOne
	@JoinColumn(name = "ma_chuc_danh", nullable = false)
	@NotNull
	private ChucDanh chucDanh;

	// bi-directional many-to-one association to QuocTich
	@ManyToOne
	@JoinColumn(name = "ma_quoc_tich", nullable = false)
	@NotNull
	private QuocTich quocTich;

	// bi-directional many-to-one association to TinhTrangHonNhan
	@ManyToOne
	@JoinColumn(name = "ma_tinh_trang_hon_nhan", nullable = false)
	@NotNull
	private TinhTrangHonNhan tinhTrangHonNhan;

	// bi-directional many-to-one association to HopDong
	@OneToMany(mappedBy = "hoSoNhanVien")
	private List<HopDong> hopDongs;

	// bi-directional many-to-many association to DuAn
	@ManyToMany(mappedBy = "hoSoNhanViens")
	private List<DuAn> duAns;

	// bi-directional many-to-one association to ThongTinBangCap
	@OneToMany(mappedBy = "hoSoNhanVien")
	private List<ThongTinBangCap> thongTinBangCaps;

	// bi-directional many-to-one association to ThongTinGiaDinh
	@OneToMany(mappedBy = "hoSoNhanVien")
	private List<ThongTinGiaDinh> thongTinGiaDinhs;

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

	public Integer getGioiTinh() {
		return this.gioiTinh;
	}

	public void setGioiTinh(Integer gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public String getHoDem() {
		return this.hoDem;
	}

	public void setHoDem(String hoDem) {
		this.hoDem = hoDem;
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

	public String getSoDienThoai() {
		return this.soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getTen() {
		return this.ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public PhongBan getPhongBan() {
		return this.phongBan;
	}

	public void setPhongBan(PhongBan phongBan) {
		this.phongBan = phongBan;
	}

	public ChucDanh getChucDanh() {
		return this.chucDanh;
	}

	public void setChucDanh(ChucDanh chucDanh) {
		this.chucDanh = chucDanh;
	}

	public QuocTich getQuocTich() {
		return this.quocTich;
	}

	public void setQuocTich(QuocTich quocTich) {
		this.quocTich = quocTich;
	}

	public TinhTrangHonNhan getTinhTrangHonNhan() {
		return this.tinhTrangHonNhan;
	}

	public void setTinhTrangHonNhan(TinhTrangHonNhan tinhTrangHonNhan) {
		this.tinhTrangHonNhan = tinhTrangHonNhan;
	}

	public Integer getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(Integer trangThai) {
		this.trangThai = trangThai;
	}

	public List<HopDong> getHopDongs() {
		return this.hopDongs;
	}

	public void setHopDongs(List<HopDong> hopDongs) {
		this.hopDongs = hopDongs;
	}

	public HopDong addHopDong(HopDong hopDong) {
		getHopDongs().add(hopDong);
		hopDong.setHoSoNhanVien(this);

		return hopDong;
	}

	public HopDong removeHopDong(HopDong hopDong) {
		getHopDongs().remove(hopDong);
		hopDong.setHoSoNhanVien(null);

		return hopDong;
	}

	public List<DuAn> getDuAns() {
		return this.duAns;
	}

	public void setDuAns(List<DuAn> duAns) {
		this.duAns = duAns;
	}

	public List<ThongTinBangCap> getThongTinBangCaps() {
		return this.thongTinBangCaps;
	}

	public void setThongTinBangCaps(List<ThongTinBangCap> thongTinBangCaps) {
		this.thongTinBangCaps = thongTinBangCaps;
	}

	public ThongTinBangCap addThongTinBangCap(ThongTinBangCap thongTinBangCap) {
		getThongTinBangCaps().add(thongTinBangCap);
		thongTinBangCap.setHoSoNhanVien(this);

		return thongTinBangCap;
	}

	public ThongTinBangCap removeThongTinBangCap(ThongTinBangCap thongTinBangCap) {
		getThongTinBangCaps().remove(thongTinBangCap);
		thongTinBangCap.setHoSoNhanVien(null);

		return thongTinBangCap;
	}

	public List<ThongTinGiaDinh> getThongTinGiaDinhs() {
		return this.thongTinGiaDinhs;
	}

	public void setThongTinGiaDinhs(List<ThongTinGiaDinh> thongTinGiaDinhs) {
		this.thongTinGiaDinhs = thongTinGiaDinhs;
	}

	public ThongTinGiaDinh addThongTinGiaDinh(ThongTinGiaDinh thongTinGiaDinh) {
		getThongTinGiaDinhs().add(thongTinGiaDinh);
		thongTinGiaDinh.setHoSoNhanVien(this);

		return thongTinGiaDinh;
	}

	public ThongTinGiaDinh removeThongTinGiaDinh(ThongTinGiaDinh thongTinGiaDinh) {
		getThongTinGiaDinhs().remove(thongTinGiaDinh);
		thongTinGiaDinh.setHoSoNhanVien(null);

		return thongTinGiaDinh;
	}

	@Override
	public String toString() {
		return "HoSoNhanVien [maNhanVien=" + maNhanVien + ", anhDaiDien=" + anhDaiDien + ", danToc=" + danToc
				+ ", email=" + email + ", gioiTinh=" + gioiTinh + ", hoDem=" + hoDem + ", namSinh=" + namSinh
				+ ", ngayCap=" + ngayCap + ", noiCap=" + noiCap + ", noiTamTru=" + noiTamTru + ", queQuan=" + queQuan
				+ ", soCmnd=" + soCmnd + ", soDienThoai=" + soDienThoai + ", ten=" + ten + ", trangThai=" + trangThai
				+ ", phongBan=" + phongBan + ", chucDanh=" + chucDanh + ", quocTich=" + quocTich + ", tinhTrangHonNhan="
				+ tinhTrangHonNhan + ", hopDongs=" + hopDongs + ", duAns=" + duAns + ", thongTinBangCaps="
				+ thongTinBangCaps + ", thongTinGiaDinhs=" + thongTinGiaDinhs + "]";
	}

}