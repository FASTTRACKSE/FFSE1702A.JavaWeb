package fasttrackse1702a.fbms.quanlyduan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse1702a.fbms.quanlyduan.dao.DuAnDao;
import fasttrackse1702a.fbms.quanlyduan.entity.DuAn;
import fasttrackse1702a.fbms.quanlyduan.service.DuAnService;

@Service
public class DuAnServiceImpl implements DuAnService {
	@Autowired
	DuAnDao duAnDao;

	@Override
	public void save(DuAn duAn) {
		this.duAnDao.save(duAn);
		
	}

	@Override
	public DuAn getById(int maDuAn) {
		return this.duAnDao.getById(maDuAn);
	}

	@Override
	public List<DuAn> getAll() {
		// TODO Auto-generated method stub
		return this.duAnDao.getAll();
	}

	@Override
	public void update(DuAn duAn) {
		this.duAnDao.update(duAn);
		
	}

	@Override
	public void delete(String maDuAn) {
		// TODO Auto-generated method stub
		
	}
	
}
