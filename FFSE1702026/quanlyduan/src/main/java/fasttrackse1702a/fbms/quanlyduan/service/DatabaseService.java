package fasttrackse1702a.fbms.quanlyduan.service;

import java.util.List;

import fasttrackse1702a.fbms.quanlyduan.entity.Database;

public interface DatabaseService {
	public void save(Database database);
	public Database getById(String maDatabase);
	public List<Database> getAll();
	public void update(Database database);
	public void delete(String maDatabase);
}
