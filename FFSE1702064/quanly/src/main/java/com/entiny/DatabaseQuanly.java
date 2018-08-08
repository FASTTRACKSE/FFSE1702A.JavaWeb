package com.entiny;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class DatabaseQuanly {
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	public void getListNhanVien() {
		String sql = "select * from Student";
		List<Student> listStudent = jdbcTemplate.query(sql, new RowMapper<Student>() {

			public Student mapRow(ResultSet rowResult, int arg1) throws SQLException {
				Student st = new Student();
				st.firstName = rowResult.getString("Ho");
				st.lastName = rowResult.getString("TenSV");
				st.namSinh = rowResult.getInt("NamSinh");
				return st;
			}
			
		});
	}
}
