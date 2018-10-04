package fasttrackse.ffse1702a.fhrm.entity.tlpl;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="ho_so")
public class HoSo {
	@Id
	@Column(name="ma_nhan_vien")
	private int maNhanVien;
	
	@Column(name="ho_ten")
	private String hoTen;
	
	@Column(name="img")
	private String img;
	
	@Column(name="ma_vai_tro")
	private String maVaiTro;
	
	@Column(name="ma_phong_ban")
	private String maPhongBan;
	
	@Column(name="luong")
	private int luong;
	
	@Column(name="ma_hop_dong")
	private String maHopDong;
	
	@Column(name="ca_lam_viec")
	private String caLamViec;
	
	@Column(name="vi_tri")
	private String viTri;
	
	
	
	@Column(name="sdt")
	private int sdt;
	
	@Column(name="so_hop_dong")
	private String soHopDong;
	

	
	@Column(name="ma_gioi_tinh")
	private String maGioiTinh;
	

	
	@Column(name="tinh_trang_hon_nhan")
	private String tinhTrangHonNhan;
	
	@Column(name="ten_bo")
	private String tenBo;
	
	@Column(name="ten_me")
	private String tenMe;
	
	@Column(name="trinh_do_chuyen_mon")
	private String trinhDoChuyenMon;
	
	@Column(name="kinh_nghiem")
	private String kinhNghiem;
	
	@Column(name="note")
	private String note;
	
	@Column(name="dia_chi_hien_tai")
	private String diaChiHienTai;
	
	@Column(name="dia_chi_thuong_tru")
	private String diaChiThuongTru;
	
	@Column(name="lien_he_khac")
	private String lienHeKhac;

	@Column(name="email")
	private String email;
	@Column (name="ngay_tham_gia")
//	@DateTimeFormat(pattern="yyyy-MM-dd")
//	@Temporal(TemporalType.DATE)
//	@NotNull
	private Date ngayThamGia;
	
	@Column (name="ngay_sinh")
//	@DateTimeFormat(pattern="yyyy-MM-dd")
//	@Temporal(TemporalType.DATE)
//	@NotNull
	private Date ngaySinh;
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

	public String getMaVaiTro() {
		return maVaiTro;
	}

	public void setMaVaiTro(String maVaiTro) {
		this.maVaiTro = maVaiTro;
	}

	public String getMaPhongBan() {
		return maPhongBan;
	}

	public void setMaPhongBan(String maPhongBan) {
		this.maPhongBan = maPhongBan;
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
	
}
