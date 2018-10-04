package fasttrackse.ffse1702a.fbms.entity;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name="ho_so")
public class HoSo {

	@Id
	@Column(name="ma_nhan_vien")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer maNhanVien;
	
	@Column(name = "ho_dem")
	private String hoDem;
	
	@Column(name="ten")
	private String ten;
	
	@Column(name="anh_dai_dien")
	private String anhDaiDien;
	
	@Column (name="nam_sinh")
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	@NotNull
	private Date namSinh;
	
	@Column(name="que_quan")
	private String queQuan;
	
	@Column(name="dan_toc")
	private String dan_toc;
	
	@Column(name="noi_tam_tru")
	private String noiTamTru;
	
	@Column(name="so_dien_thoai")
	private String soDienThoai;
	
	@Column(name="email")
	private String email;
	
	@Column(name="so_cmnd")
	private String soCmnd;
	
	@Column(name="noi_cap")
	private String noiCap;
	
	@Column(name="ngay_cap")
	private Date ngayCap;
	
	@Column(name="trang_thai")
	@DateTimeFormat(pattern="yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	private int trangThai;
	
	@ManyToOne(fetch = FetchType.EAGER,cascade= CascadeType.MERGE)
	@JoinColumn(name="ma_tinh_trang",referencedColumnName="ma_tinh_trang", insertable=true, updatable=true)
	@NotNull
	private TinhTrangHonNhan tinhTrang ;
	
	@ManyToMany(targetEntity = ChucDanh.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "chuc_danh_nhan_vien", joinColumns = {
	@JoinColumn(name = "ma_nhan_vien", referencedColumnName = "ma_nhan_vien",  updatable = true,insertable=true) }, inverseJoinColumns = {
	@JoinColumn(name = "ma_chuc_danh", referencedColumnName = "ma_chuc_danh", nullable = true, updatable = false,insertable=true) })
	@NotEmpty
	private Set<ChucDanh> chucDanh;
	
	@ManyToMany(targetEntity = PhongBan.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "phong_ban_nhan_vien", joinColumns = {
	@JoinColumn(name = "ma_nhan_vien", referencedColumnName = "ma_nhan_vien",  updatable = true,insertable=true) }, inverseJoinColumns = {
	@JoinColumn(name = "ma_phong_ban", referencedColumnName = "ma_phong_ban", nullable = true, updatable = false,insertable=true) })
	@NotEmpty
	private Set<PhongBan> phongBan;
	
	@ManyToMany(targetEntity = QuocTich.class, cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinTable(name = "quoc_tich_nhan_vien", joinColumns = {
	@JoinColumn(name = "ma_nhan_vien", referencedColumnName = "ma_nhan_vien",  updatable = true,insertable=true) }, inverseJoinColumns = {
	@JoinColumn(name = "ma_quoc_tich", referencedColumnName = "ma_quoc_tich", nullable = true, updatable = false,insertable=true) })
	@NotEmpty
	private Set<QuocTich> quocTich;

	
	
	
	public Integer getMaNhanVien() {
		return maNhanVien;
	}

	public void setMaNhanVien(Integer maNhanVien) {
		this.maNhanVien = maNhanVien;
	}

	public String getHoDem() {
		return hoDem;
	}

	public void setHoDem(String hoDem) {
		this.hoDem = hoDem;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getAnhDaiDien() {
		return anhDaiDien;
	}

	public void setAnhDaiDien(String anhDaiDien) {
		this.anhDaiDien = anhDaiDien;
	}

	public Date getNamSinh() {
		return namSinh;
	}

	public void setNamSinh(Date namSinh) {
		this.namSinh = namSinh;
	}

	public String getQueQuan() {
		return queQuan;
	}

	public void setQueQuan(String queQuan) {
		this.queQuan = queQuan;
	}

	public String getDan_toc() {
		return dan_toc;
	}

	public void setDan_toc(String dan_toc) {
		this.dan_toc = dan_toc;
	}

	public String getNoiTamTru() {
		return noiTamTru;
	}

	public void setNoiTamTru(String noiTamTru) {
		this.noiTamTru = noiTamTru;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSoCmnd() {
		return soCmnd;
	}

	public void setSoCmnd(String soCmnd) {
		this.soCmnd = soCmnd;
	}

	public String getNoiCap() {
		return noiCap;
	}

	public void setNoiCap(String noiCap) {
		this.noiCap = noiCap;
	}

	public Date getNgayCap() {
		return ngayCap;
	}

	public void setNgayCap(Date ngayCap) {
		this.ngayCap = ngayCap;
	}

	public int getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(int trangThai) {
		this.trangThai = trangThai;
	}

	public TinhTrangHonNhan getTinhTrang() {
		return tinhTrang;
	}

	public void setTinhTrang(TinhTrangHonNhan tinhTrang) {
		this.tinhTrang = tinhTrang;
	}

	public Set<ChucDanh> getChucDanh() {
		return chucDanh;
	}

	public void setChucDanh(Set<ChucDanh> chucDanh) {
		this.chucDanh = chucDanh;
	}

	public Set<PhongBan> getPhongBan() {
		return phongBan;
	}

	public void setPhongBan(Set<PhongBan> phongBan) {
		this.phongBan = phongBan;
	}

	public Set<QuocTich> getQuocTich() {
		return quocTich;
	}

	public void setQuocTich(Set<QuocTich> quocTich) {
		this.quocTich = quocTich;
	}
	
}
