package Model;

public class Sach {
	private String maSach;
	private String tenSach;
	private String tenTacGia;
	private String theLoai;
	private String nhaXB;
	private String namXB;
	private String soLuong;
	private String tinhTrang;

	public Sach() {

	}

	public Sach(String maSach, String tenSach, String tenTacGia, String theLoai, String nhaXB, String namXB,
			String soLuong, String tinhTrang) {
		super();
		this.maSach = maSach;
		this.tenSach = tenSach;
		this.tenTacGia = tenTacGia;
		this.theLoai = theLoai;
		this.nhaXB = nhaXB;
		this.namXB = namXB;
		this.soLuong = soLuong;
		this.tinhTrang = tinhTrang;
	}

	public String getMaSach() {
		return maSach;
	}

	public void setMaSach(String maSach) {
		this.maSach = maSach;
	}

	public String getTenSach() {
		return tenSach;
	}

	public void setTenSach(String tenSach) {
		this.tenSach = tenSach;
	}

	public String getTenTacGia() {
		return tenTacGia;
	}

	public void setTenTacGia(String tenTacGia) {
		this.tenTacGia = tenTacGia;
	}

	public String getTheLoai() {
		return theLoai;
	}

	public void setTheLoai(String theLoai) {
		this.theLoai = theLoai;
	}

	public String getNhaXB() {
		return nhaXB;
	}

	public void setNhaXB(String nhaXB) {
		this.nhaXB = nhaXB;
	}

	public String getNamXB() {
		return namXB;
	}

	public void setNamXB(String namXB) {
		this.namXB = namXB;
	}

	public String getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(String string) {
		this.soLuong = string;
	}

	public String getTinhTrang() {
		return tinhTrang;
	}

	public void setTinhTrang(String string) {
		this.tinhTrang = string;
	}
}
