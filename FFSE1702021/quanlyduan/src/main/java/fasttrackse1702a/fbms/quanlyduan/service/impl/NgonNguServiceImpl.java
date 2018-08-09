package fasttrackse1702a.fbms.quanlyduan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse1702a.fbms.quanlyduan.dao.NgonNguDao;
import fasttrackse1702a.fbms.quanlyduan.entity.NgonNgu;
import fasttrackse1702a.fbms.quanlyduan.service.NgonNguService;
@Service
public class NgonNguServiceImpl implements NgonNguService {
	@Autowired 
	NgonNguDao ngonNguDao;
	
	//Thêm mới ngôn ngữ
	@Override
	public void save(NgonNgu ngonNgu) {
		this.ngonNguDao.save(ngonNgu);
		
	}

	@Override
	public NgonNgu getById(String maNgonNgu) {
		
		return this.ngonNguDao.getById(maNgonNgu);
	}

	@Override
	public List<NgonNgu> getAll() {
		
		return this.ngonNguDao.getAll();
	}

	@Override
	public void update(NgonNgu ngonNgu) {
		this.ngonNguDao.update(ngonNgu);
		
	}

	@Override
	public void delete(String maNgonNgu) {
		this.ngonNguDao.delete(maNgonNgu);
		
	}
	
	
}
