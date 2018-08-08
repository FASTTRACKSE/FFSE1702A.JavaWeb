package com.ncq.entity;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class DatabaseSV {
	private JdbcTemplate jdbcTemplate;
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	public List<Student> getListSinhVien() {
		
		String sql="select * from student";
		List<Student> listSinhVien = jdbcTemplate.query(sql, new RowMapper<Student>() {
			
		
			public Student mapRow(ResultSet rowResult, int arg1) throws SQLException {
				Student st = new Student();
				st.id = rowResult.getInt("id");
				st.setFirstName(rowResult.getString("FirstName"));
				st.setLastName(rowResult.getString("LastName"));
				st.setEmail(rowResult.getString("Email"));
				
				return st;
			}	
		});
	
		return listSinhVien;
	}
	
}
