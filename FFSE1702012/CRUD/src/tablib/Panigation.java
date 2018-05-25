package tablib;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import model.KhachHang;
public class Panigation {
	public static List<KhachHang> DisplayKH(int start, int count, Connection conn)
	{
		List<KhachHang> list =  new ArrayList<KhachHang>();
		String sql = "select * from Customer limit "+(start-1) +"," + count + "";
		try {
			PreparedStatement ptmt = (PreparedStatement) conn.prepareStatement(sql);
			ResultSet rs =  ptmt.executeQuery();
			while(rs.next())
			{
				KhachHang kh= new KhachHang();
				int id =  rs.getInt("Id");
				String makh =  rs.getString("Makh");
				String hoten = rs.getString("Username");
				String quan = rs.getString("Quan");
				String phone =  rs.getString("Phone");
				String email =  rs.getString("Email");
			
				kh.setMakh(makh);
				kh.setHoten(hoten);
				kh.setQuan(quan);
				kh.setPhone(phone);
				kh.setEmail(email);
				kh.setId(id);
				list.add(kh);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
