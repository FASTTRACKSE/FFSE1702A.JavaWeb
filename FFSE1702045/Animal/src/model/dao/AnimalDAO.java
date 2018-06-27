package model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.Animal;

public class AnimalDAO {

	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	private ConnectDB connectdb;

	public AnimalDAO() {
		connectdb = new ConnectDB();
		connectdb.openConnect();
	}

	public ArrayList<Animal> getAllAnimals(int a, int b) {
		ArrayList<Animal> list = new ArrayList<Animal>();
		String sql = "SELECT * FROM animal Limit " + a + "," + b + "";
		try {
			stmt = connectdb.openConnect().prepareStatement(sql);
			connectdb.openConnect();

			System.out.println(sql);
			rs = connectdb.getStatement().executeQuery(sql);
			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String sex = rs.getString("sex");
				String age = rs.getString("age");
				Animal animal = new Animal(id, name, sex, age);
				list.add(animal);
			}
		} catch (Exception e) {
			System.out.println("Please check getAllAnimals in AnimalDao");
		}
		// connectdb.closeConnect();
		return list;
	}

	public boolean insertNew(Animal animal) throws SQLException {
		String sql = "INSERT INTO `animal` (`name`, `sex`, `age`) VALUES (?, ?, ?);";
		stmt = connectdb.openConnect().prepareStatement(sql);
		stmt.setString(1, animal.getName());
		stmt.setString(2, animal.getSex());
		stmt.setString(3, animal.getAge());
		return stmt.executeUpdate() > 0;
	}

	public boolean updateOld(Animal animal) throws SQLException {
		String sql = "UPDATE `animal` SET `name`=?, `sex`=?, `age`=? WHERE `id`=?;";
		stmt = connectdb.openConnect().prepareStatement(sql);
		stmt.setString(1, animal.getName());
		stmt.setString(2, animal.getSex());
		stmt.setString(3, animal.getAge());
		stmt.setInt(4, animal.getID());
		return stmt.executeUpdate() > 0;
	}

	public boolean delete(int id) throws SQLException {
		String sql = "DELETE FROM `animal` WHERE `id`=?";
		stmt = connectdb.openConnect().prepareStatement(sql);
		stmt.setInt(1, id);
		return stmt.executeUpdate() > 0;
	}

	public Animal getAnimalID(int id) throws SQLException {
		String sql = "SELECT * FROM animal WHERE id=?";
		stmt = connectdb.openConnect().prepareStatement(sql);
		stmt.setInt(1, id);
		rs = stmt.executeQuery();
		Animal animal = null;
		while (rs.next()) {
			int ida = rs.getInt("id");
			String name = rs.getString("name");
			String sex = rs.getString("sex");
			String age = rs.getString("age");
			animal = new Animal(ida, name, sex, age);
		}
		return animal;
	}

	public int getCount() {
		String sql = "SELECT count(id) FROM animal";
		int count = 0;
		try {
			stmt = connectdb.openConnect().prepareStatement(sql);
			connectdb.openConnect();
			rs = connectdb.getStatement().executeQuery(sql);
			while (rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			System.out.println("Please check getAllAnimals in AnimalDao");
		}
		return count;
	}

}