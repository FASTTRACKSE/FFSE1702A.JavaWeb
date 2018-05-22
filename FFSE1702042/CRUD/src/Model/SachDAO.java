package Model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.List;

import Model.Sach;
import Model.Connect;

public class SachDAO {
	private static Connection con = Connect.getConnect();

	public static int add(Sach sach) {
		int status = 0;
		try {
			PreparedStatement ps = con
					.prepareStatement("insert into sach (Ten_Sach, Ten_Tac_Gia, The_loai, Nha_Xb, Nam_xb, So_luong, Tinh_trang) values(?,?,?,?,?,?,?)");
			ps.setString(1, sach.getTenSach());
			ps.setString(2, sach.getTenTacGia());
			ps.setString(3, sach.getTheLoai());
			ps.setString(4, sach.getNhaXB());
			ps.setString(5, sach.getNamXB());
			ps.setString(6, sach.getSoLuong());
			ps.setString(7, sach.getTinhTrang());
			
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int update(Sach sach) {
		int status = 0;
		PreparedStatement ps;
		try {
			
				ps = con.prepareStatement("update sach set Ten_Sach=?,Ten_Tac_Gia=?,The_loai=?,Nha_Xb=?,Nam_Xb=?,So_luong=?,Tinh_trang=? where Ma_Sach=?");
				ps.setString(1, sach.getTenSach());
				ps.setString(2, sach.getTenTacGia());
				ps.setString(3, sach.getTheLoai());
				ps.setString(4, sach.getNhaXB());
				ps.setString(5, sach.getNamXB());
				ps.setString(6, sach.getSoLuong());
				ps.setString(7, sach.getTinhTrang());
				ps.setString(8, sach.getMaSach());
			
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int delete(String maSach) {
		int status = 0;
		try {
			PreparedStatement ps = con.prepareStatement("delete from sach where Ma_Sach=?");
			ps.setString(1, maSach);
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<Sach> getAllRecords() {
		List<Sach> list = new ArrayList<Sach>();

		try {
			PreparedStatement ps = con.prepareStatement("select * from sach");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Sach sach = new Sach();
				sach.setMaSach(rs.getString("Ma_Sach"));
				sach.setTenSach(rs.getString("Ten_Sach"));
				sach.setTenTacGia(rs.getString("Ten_Tac_Gia"));
				sach.setTheLoai(rs.getString("The_loai"));
				sach.setNhaXB(rs.getString("Nha_Xb"));
				sach.setNamXB(rs.getString("Nam_Xb"));
				sach.setSoLuong(rs.getString("So_luong"));
				sach.setTinhTrang(rs.getString("Tinh_trang"));
				list.add(sach);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	public static List<Sach> getRecords(int start, int total) {
		List<Sach> list = new ArrayList<Sach>();
		try {
			PreparedStatement ps = con.prepareStatement("select * from sach limit " + (start - 1) + "," + total);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Sach sach = new Sach();
				sach.setMaSach(rs.getString("Ma_Sach"));
				sach.setTenSach(rs.getString("Ten_Sach"));
				sach.setTenTacGia(rs.getString("Ten_Tac_Gia"));
				sach.setTheLoai(rs.getString("The_loai"));
				sach.setNhaXB(rs.getString("Nha_Xb"));
				sach.setNamXB(rs.getString("Nam_Xb"));
				sach.setSoLuong(rs.getString("So_luong"));
				sach.setTinhTrang(rs.getString("Tinh_trang"));
				list.add(sach);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	public static int countRecords() {
		try {
			PreparedStatement ps = con.prepareStatement("select count(*) from sach");
			ResultSet rs = ps.executeQuery();
			rs.next();
			return rs.getInt("count(*)");
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}
	public static Sach getRecordById(String maSach) {
		Sach sach = null;
		try {
			PreparedStatement ps = con.prepareStatement("select * from sach where Ma_Sach=?");
			ps.setString(1, maSach);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				sach = new Sach();
				sach.setMaSach(rs.getString("Ma_Sach"));
				sach.setTenSach(rs.getString("Ten_Sach"));
				sach.setTenTacGia(rs.getString("Ten_Tac_Gia"));
				sach.setTheLoai(rs.getString("The_loai"));
				sach.setNhaXB(rs.getString("Nha_Xb"));
				sach.setNamXB(rs.getString("Nam_Xb"));
				sach.setSoLuong(rs.getString("So_luong"));
				sach.setTinhTrang(rs.getString("Tinh_trang"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return sach;
	}
	//Language
	public Map<String, String> englishLanguage(){
		Map<String, String> map = new HashMap<>();
		map.put("ListSach.TieuDe","List");
		map.put("ListSach.MaSach","ID");
		map.put("ListSach.TenSach","Tittle");
		map.put("ListSach.TenTacGia","Author");
		map.put("ListSach.TheLoai","Kind");
		map.put("ListSach.NhaXB","Publishing house");
		map.put("ListSach.NamXB","Publishing year");
		map.put("ListSach.SoLuong","Amount");
		map.put("ListSach.TinhTrang","Status");
		map.put("ListSach.Action","Action");
		map.put("ListSach.Add","Add New Book");
		map.put("ListSach.Language","language");
		map.put("ListSach.Submit","Submit");
		map.put("ListSach.Cancel","Cancel");
		return map;
		
	}
	public Map<String, String> vietnameseLanguage(){
		Map<String, String> map = new HashMap<>();
		map.put("ListSach.TieuDe","Danh Sách");
		map.put("ListSach.MaSach","Mã sách");
		map.put("ListSach.TenSach","Tên sách");
		map.put("ListSach.TenTacGia","Tác giả");
		map.put("ListSach.TheLoai","Thể loại");
		map.put("ListSach.NhaXB","Nhà xuất bản");
		map.put("ListSach.NamXB","Năm xuất bản");
		map.put("ListSach.SoLuong","Số lượng");
		map.put("ListSach.TinhTrang","Tình trạng");
		map.put("ListSach.Action","Action");
		map.put("ListSach.Add","Thêm sách");
		map.put("ListSach.Language","language");
		map.put("ListSach.Submit","Submit");
		map.put("ListSach.Cancel","Hủy");
		return map;
		
	}
}

