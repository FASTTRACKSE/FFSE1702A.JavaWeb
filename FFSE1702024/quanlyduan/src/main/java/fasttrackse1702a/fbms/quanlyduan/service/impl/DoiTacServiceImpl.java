package fasttrackse1702a.fbms.quanlyduan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse1702a.fbms.quanlyduan.dao.DoiTacDao;
import fasttrackse1702a.fbms.quanlyduan.entity.DoiTac;
import fasttrackse1702a.fbms.quanlyduan.service.DoiTacService;
@Service
public class DoiTacServiceImpl implements DoiTacService{
	@Autowired 
	DoiTacDao doiTacDao;
	
	//Thêm mới ngôn ngữ
	@Override
	public void save(DoiTac doiTac) {
		this.doiTacDao.save(doiTac);
		
	}

	@Override
	public DoiTac getById(String maDoiTac) {
		
		return this.doiTacDao.getById(maDoiTac);
	}

	@Override
	public List<DoiTac> getAll() {
		
		return this.doiTacDao.getAll();
	}

	@Override
	public void update(DoiTac doiTac) {
		this.doiTacDao.update(doiTac);
		
	}

	@Override
	public void delete(String maDoiTac) {
		this.doiTacDao.delete(maDoiTac);
		
	}
}
