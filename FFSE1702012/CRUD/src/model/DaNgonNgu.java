package model;

import java.util.HashMap;
import java.util.Map;

public class DaNgonNgu {
	public Map<String,String> englishLanguage()
	{
		Map<String,String> map = new HashMap<>(); 
		map.put("List.TieuDe", "List Customers");
		map.put("List.NgonNgu", "Select Language");
		map.put("List.MaKH", "Id ");
		map.put("List.HoTen", "UserName");
		map.put("List.Quan", "District");
		map.put("List.SoDienThoai", "Phone number");
		map.put("List.Email", "Email");
		map.put("List.ChucNang", "Action");
		map.put("List.Them", "Add User");
		map.put("List.DangXuat", "Logout");
		return map;
	}
	public Map<String,String> vietnameseLanguage()
	{
		Map<String,String> map = new HashMap<>(); 
		map.put("List.TieuDe", "Danh Sách Khách Hàng");
		map.put("List.NgonNgu", "Lựa Chọn Ngôn Ngữ");
		map.put("List.MaKH", "Mã Khách Hàng");
		map.put("List.HoTen", "Tên Khách Hàng");
		map.put("List.Quan", "Quận");
		map.put("List.SoDienThoai", "Số Điện Thoại");
		map.put("List.Email", "Email");
		map.put("List.ChucNang", "Chức Năng");
		map.put("List.Them", "Thêm Mới");
		map.put("List.DangXuat", "Đăng xuất");
		return map;
	}
}
