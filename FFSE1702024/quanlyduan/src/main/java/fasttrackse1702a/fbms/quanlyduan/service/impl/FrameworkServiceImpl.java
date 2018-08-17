package fasttrackse1702a.fbms.quanlyduan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse1702a.fbms.quanlyduan.dao.FrameworkDao;
import fasttrackse1702a.fbms.quanlyduan.entity.Framework;
import fasttrackse1702a.fbms.quanlyduan.service.FrameworkService;

@Service
public class FrameworkServiceImpl implements FrameworkService {
	@Autowired 
	FrameworkDao frameworkDao;
	
	//Thêm mới ngôn ngữ
	@Override
	public void save(Framework framework) {
		this.frameworkDao.save(framework);
		
	}

	@Override
	public Framework getById(String maFramework) {
		
		return this.frameworkDao.getById(maFramework);
	}

	@Override
	public List<Framework> getAll() {
		
		return this.frameworkDao.getAll();
	}

	@Override
	public void update(Framework framework) {
		this.frameworkDao.update(framework);
		
	}

	@Override
	public void delete(String maFramework) {
		this.frameworkDao.delete(maFramework);
		
	}
	
	
}
