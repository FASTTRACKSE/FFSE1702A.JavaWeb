package fasttrackse1702a.fbms.quanlyduan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse1702a.fbms.quanlyduan.dao.VaiTroDao;
import fasttrackse1702a.fbms.quanlyduan.entity.VaiTro;
import fasttrackse1702a.fbms.quanlyduan.service.VaiTroService;

@Service
public class VaiTroServiceImpl implements VaiTroService {
	@Autowired 
	VaiTroDao vaiTroDao;
	
	//Thêm mới ngôn ngữ
	@Override
	public void save(VaiTro vaitro) {
		this.vaiTroDao.save(vaitro);
		
	}

	@Override
	public VaiTro getById(String maVaiTro) {
		
		return this.vaiTroDao.getById(maVaiTro);
	}

	@Override
	public List<VaiTro> getAll() {
		
		return this.vaiTroDao.getAll();
	}

	@Override
	public void update(VaiTro vaitro) {
		this.vaiTroDao.update(vaitro);
		
	}

	@Override
	public void delete(String maVaiTro) {
		this.vaiTroDao.delete(maVaiTro);
		
	}
	
	
}
