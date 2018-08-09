package fasttrackse1702a.fbms.quanlyduan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse1702a.fbms.quanlyduan.dao.DatabaseDao;
import fasttrackse1702a.fbms.quanlyduan.entity.Database;
import fasttrackse1702a.fbms.quanlyduan.service.DatabaseService;

@Service
public class DatabaseServiceImpl implements DatabaseService {
	@Autowired 
	DatabaseDao databaseDao;
	
	//Thêm mới ngôn ngữ
	@Override
	public void save(Database database) {
		this.databaseDao.save(database);
		
	}

	@Override
	public Database getById(String maDatabase) {
		
		return this.databaseDao.getById(maDatabase);
	}

	@Override
	public List<Database> getAll() {
		
		return this.databaseDao.getAll();
	}

	@Override
	public void update(Database database) {
		this.databaseDao.update(database);
		
	}

	@Override
	public void delete(String maDatabase) {
		this.databaseDao.delete(maDatabase);
		
	}
	
	
}
