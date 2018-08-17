package fasttrackse1702a.fbms.quanlyduan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse1702a.fbms.quanlyduan.dao.NghiepVuDao;
import fasttrackse1702a.fbms.quanlyduan.entity.NghiepVu;
import fasttrackse1702a.fbms.quanlyduan.service.NghiepVuService;

@Service
public class NghiepVuServiceImpl implements NghiepVuService {
	@Autowired 
	NghiepVuDao nghiepVuDao;
	
	//Thêm mới ngôn ngữ
	@Override
	public void save(NghiepVu nghiepVu) {
		this.nghiepVuDao.save(nghiepVu);
		
	}

	@Override
	public NghiepVu getById(String maNghiepVu) {
		
		return this.nghiepVuDao.getById(maNghiepVu);
	}

	@Override
	public List<NghiepVu> getAll() {
		
		return this.nghiepVuDao.getAll();
	}

	@Override
	public void update(NghiepVu nghiepVu) {
		this.nghiepVuDao.update(nghiepVu);
		
	}

	@Override
	public void delete(String maNghiepVu) {
		this.nghiepVuDao.delete(maNghiepVu);
		
	}
	
}
