package fasttrackse1702a.fbms.quanlyduan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse1702a.fbms.quanlyduan.dao.TinhTrangDao;

import fasttrackse1702a.fbms.quanlyduan.entity.TinhTrang;

import fasttrackse1702a.fbms.quanlyduan.service.TinhTrangService;


@Service
public class TinhTrangServiceImpl implements TinhTrangService {
	@Autowired 
	TinhTrangDao tinhTrangDao;
	
	//Thêm mới ngôn ngữ
	@Override
	public void save(TinhTrang tinhTrang) {
		this.tinhTrangDao.save(tinhTrang);
		
	}

	@Override
	public TinhTrang getById(String maTinhTrang) {
		
		return this.tinhTrangDao.getById(maTinhTrang);
	}

	@Override
	public List<TinhTrang> getAll() {
		
		return this.tinhTrangDao.getAll();
	}

	@Override
	public void update(TinhTrang tinhTrang) {
		this.tinhTrangDao.update(tinhTrang);
		
	}

	@Override
	public void delete(String maTinhTrang) {
		this.tinhTrangDao.delete(maTinhTrang);
		
	}
	
	
}
