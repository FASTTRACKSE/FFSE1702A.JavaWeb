package fasttrackse.ffse1702a.fhrm.entity.tlpl;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "ho_so")
public class HoSo {
	@Id
	@Column(name = "ma_nhan_vien")
	private int maNhanVien;

	@NotEmpty
	@Length(min = 4, max = 30)
	@Column(name = "ho_ten")
	private String hoTen;

	
	@Column(name = "img")
	private String img;

	@ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.MERGE)
	@JoinColumn(name = "ma_vai_tro", referencedColumnName = "ma_vai_tro", insertable = true, updatable = true)
	@NotNull
	private VaiTro vaiTro;

	@ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.MERGE)
	@JoinColumn(name = "ma_phong_ban", referencedColumnName = "ma_phong_ban", insertable = true, updatable = true)
	@NotNull
	private PB phongBan;

	@Column(name = "luong")
	@NotNull
	private int luong;

	@Column(name = "ma_hop_dong")
	@NotEmpty
	private String maHopDong;

	@Column(name = "ca_lam_viec")
	@NotEmpty
	private String caLamViec;

	@Column(name = "vi_tri")
	@NotEmpty
	private String viTri;

	@Column(name = "sdt")
	@NotNull
	private int sdt;

	@Column(name = "so_hop_dong")
	@NotEmpty
	private String soHopDong;

	@NotEmpty
	@Column(name = "ma_gioi_tinh")
	private String maGioiTinh;
	
	@NotEmpty
	@Column(name = "tinh_trang_hon_nhan")
	private String tinhTrangHonNhan;

	@Column(name = "ten_bo")
	@NotEmpty
	private String tenBo;

	@Column(name = "ten_me")
	@NotEmpty
	private String tenMe;

	@Column(name = "trinh_do_chuyen_mon")
	@NotEmpty
	private String trinhDoChuyenMon;

	@Column(name = "kinh_nghiem")
	@NotEmpty
	private String kinhNghiem;

	@Column(name = "note")
	@NotEmpty
	private String note;

	@Column(name = "dia_chi_hien_tai")
	@NotEmpty
	private String diaChiHienTai;

	@Column(name = "dia_chi_thuong_tru")
	@NotEmpty
	private String diaChiThuongTru;

	@Column(name = "lien_he_khac")
	@NotEmpty
	private String lienHeKhac;

	@Column(name = "ten_ngan_hang")
	@NotEmpty
	private String tenNganHang;

	@Column(name = "so_tai_khoan")
	@NotNull
	private int soTaiKhoan;

	@NotEmpty
	@Email
	@Length(min = 10, max = 30)
	@Column(name = "email")

	private String email;
	@Column(name = "ngay_tham_gia")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	@NotNull
	private Date ngayThamGia;

	@Column(name = "ngay_sinh")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	@NotNull
	private Date ngaySinh;
	@Column(name = "is_delete")
    private int isDelete;
	
	public int getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}

	public int getMaNhanVien() {
		return maNhanVien;
	}

	public void setMaNhanVien(int maNhanVien) {
		this.maNhanVien = maNhanVien;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public VaiTro getVaiTro() {
		return vaiTro;
	}

	public void setVaiTro(VaiTro vaiTro) {
		this.vaiTro = vaiTro;
	}

	public PB getPhongBan() {
		return phongBan;
	}

	public void setPhongBan(PB phongBan) {
		this.phongBan = phongBan;
	}

	public int getLuong() {
		return luong;
	}

	public void setLuong(int luong) {
		this.luong = luong;
	}

	public String getMaHopDong() {
		return maHopDong;
	}

	public void setMaHopDong(String maHopDong) {
		this.maHopDong = maHopDong;
	}

	public String getCaLamViec() {
		return caLamViec;
	}

	public void setCaLamViec(String caLamViec) {
		this.caLamViec = caLamViec;
	}

	public String getViTri() {
		return viTri;
	}

	public void setViTri(String viTri) {
		this.viTri = viTri;
	}

	public int getSdt() {
		return sdt;
	}

	public void setSdt(int sdt) {
		this.sdt = sdt;
	}

	public String getSoHopDong() {
		return soHopDong;
	}

	public void setSoHopDong(String soHopDong) {
		this.soHopDong = soHopDong;
	}

	public String getMaGioiTinh() {
		return maGioiTinh;
	}

	public void setMaGioiTinh(String maGioiTinh) {
		this.maGioiTinh = maGioiTinh;
	}

	public String geTinhTrangHonNhan() {
		return tinhTrangHonNhan;
	}

	public void setTinhTrangHonNhan(String tinhTrangHonNhan) {
		this.tinhTrangHonNhan = tinhTrangHonNhan;
	}

	public String getTenBo() {
		return tenBo;
	}

	public void setTenBo(String tenBo) {
		this.tenBo = tenBo;
	}

	public String getTenMe() {
		return tenMe;
	}

	public void setTenMe(String tenMe) {
		this.tenMe = tenMe;
	}

	public String getTrinhDoChuyenMon() {
		return trinhDoChuyenMon;
	}

	public void setTrinhDoChuyenMon(String trinhDoChuyenMon) {
		this.trinhDoChuyenMon = trinhDoChuyenMon;
	}

	public String getKinhNghiem() {
		return kinhNghiem;
	}

	public void setKinhNghiem(String kinhNghiem) {
		this.kinhNghiem = kinhNghiem;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getDiaChiHienTai() {
		return diaChiHienTai;
	}

	public void setDiaChiHienTai(String diaChiHienTai) {
		this.diaChiHienTai = diaChiHienTai;
	}

	public String getDiaChiThuongTru() {
		return diaChiThuongTru;
	}

	public void setDiaChiThuongTru(String diaChiThuongTru) {
		this.diaChiThuongTru = diaChiThuongTru;
	}

	public String getLienHeKhac() {
		return lienHeKhac;
	}

	public void setLienHeKhac(String lienHeKhac) {
		this.lienHeKhac = lienHeKhac;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getNgayThamGia() {
		return ngayThamGia;
	}

	public void setNgayThamGia(Date ngayThamGia) {
		this.ngayThamGia = ngayThamGia;
	}

	public Date getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public String getTinhTrangHonNhan() {
		return tinhTrangHonNhan;
	}

	public String getTenNganHang() {
		return tenNganHang;
	}

	public void setTenNganHang(String tenNganHang) {
		this.tenNganHang = tenNganHang;
	}

	public int getSoTaiKhoan() {
		return soTaiKhoan;
	}

	public void setSoTaiKhoan(int soTaiKhoan) {
		this.soTaiKhoan = soTaiKhoan;
	}

}
