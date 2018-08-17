package fasttrackse1702a.fbms.quanlyduan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse1702a.fbms.quanlyduan.dao.NhiemVuDao;
import fasttrackse1702a.fbms.quanlyduan.entity.NhiemVu;
import fasttrackse1702a.fbms.quanlyduan.service.NhiemVuService;

@Service
public class NhiemVuServiceImpl implements NhiemVuService {
	@Autowired
	NhiemVuDao nhiemVuDao;
	
	@Override
	public void save(NhiemVu nhiemVu) {
		this.nhiemVuDao.save(nhiemVu);
		
	}

	@Override
	public void update(NhiemVu nhiemVu) {
		this.nhiemVuDao.update(nhiemVu);
		
	}
	@Override
	public List<NhiemVu> getAll() {
		
		return this.nhiemVuDao.getAll();
	}

	@Override
	public NhiemVu getById(int maDuAn,String maNhanVien) {
	
		return this.nhiemVuDao.getById(maDuAn,maNhanVien);
	}

	@Override
	public void delete(NhiemVu nhiemvu) {
		this.nhiemVuDao.delete(nhiemvu);
		
	}

}
