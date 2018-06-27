package dao;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import model.KhachHang;

public class UserDAO {
	private String jdbcURL;
	private String jdbcUsername;
	private String jdbcPassword;
	private Connection jdbcConnection;
	public UserDAO(String jdbcURL,String jdbcUsername,String jdbcPassword) {
		this.jdbcURL=jdbcURL+"?useUnicode=true&characterEncoding=utf8";
		this.jdbcUsername=jdbcUsername;
		this.jdbcPassword=jdbcPassword;
		
	}
	public void connect() throws SQLException {
		try {
			if(jdbcConnection==null || jdbcConnection.isClosed()) {
				Class.forName("com.mysql.jdbc.Driver");
				
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			throw new SQLException(e);
		}
		jdbcConnection= (Connection) DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		
	}
	public void disConnect() throws SQLException{
		if(jdbcConnection!=null || !jdbcConnection.isClosed()) {
			jdbcConnection.close();		
		}
	}
	public void insertUser(KhachHang kh) throws SQLException  {
		connect();
		String sql = "INSERT INTO ffse1702026_user( maKH, name, phone, email, quan) VALUES (?,?,?,?,?)";
		PreparedStatement sttm = (PreparedStatement) jdbcConnection.prepareStatement(sql);
		sttm.setString(1, kh.getMaKH());
		sttm.setString(2, kh.getName());
		sttm.setString(3, kh.getPhone());
		sttm.setString(4, kh.getEmail());
		sttm.setString(5, kh.getQuan());
		sttm.executeUpdate();
		disConnect();

	}
	public KhachHang getInfor(String id) throws SQLException {
		connect();
		String sql="select * from ffse1702026_user where maKH='"+id+"'";
		PreparedStatement sttm = (PreparedStatement) jdbcConnection.prepareStatement(sql);
		ResultSet rs=sttm.executeQuery();
		KhachHang kh=new KhachHang();
		while(rs.next()) {
			kh=new KhachHang();
			kh.setMaKH(rs.getString(2));
			kh.setName(rs.getString(3));
			kh.setPhone(rs.getString(4));
			kh.setEmail(rs.getString(5));
			kh.setQuan(rs.getString(6));
		}
		disConnect();
		return kh;	
	}
	public void updateUser(KhachHang kh, String id) throws SQLException {
		connect();
		String sql = "UPDATE ffse1702026_user SET maKH=?,name=?,phone=?,email=?,quan=? WHERE maKH='" + id+"'";
		PreparedStatement sttm = (PreparedStatement) jdbcConnection.prepareStatement(sql);
		sttm.setString(1, kh.getMaKH());
		sttm.setString(2, kh.getName());
		sttm.setString(3, kh.getPhone());
		sttm.setString(4, kh.getEmail());
		sttm.setString(5, kh.getQuan());
		sttm.executeUpdate();
		disConnect();
	}
	public void deleteUser(String id) throws SQLException {
		connect();
		String sql = "delete from ffse1702026_user where maKH='" + id+"'";
		PreparedStatement sttm = (PreparedStatement) jdbcConnection.prepareStatement(sql);
		sttm.executeUpdate();
		disConnect();
	}
	public List<KhachHang> getAll(int sta,int end) throws  SQLException {
		connect();
		String sql="select * from ffse1702026_user limit " +sta+","+end;
		PreparedStatement sttm = (PreparedStatement) jdbcConnection.prepareStatement(sql);
		ResultSet rs=sttm.executeQuery();
		List<KhachHang> li=new ArrayList<KhachHang>();
		while(rs.next()) {
			KhachHang kh=new KhachHang();
			kh.setMaKH(rs.getString(2));
			kh.setName(rs.getString(3));
			kh.setPhone(rs.getString(4));
			kh.setEmail(rs.getString(5));
			kh.setQuan(rs.getString(6));
			li.add(kh);
		}
		disConnect();
		return li;
		
	}
	public int count() throws  SQLException {
		connect();
		String sql="select COUNT(*) as total from ffse1702026_user";
		PreparedStatement sttm = (PreparedStatement) jdbcConnection.prepareStatement(sql);
		ResultSet rs=sttm.executeQuery();
		int count=0;
		while(rs.next()) {
		count=rs.getInt(1);
		}
		return count;
		
	}

}
