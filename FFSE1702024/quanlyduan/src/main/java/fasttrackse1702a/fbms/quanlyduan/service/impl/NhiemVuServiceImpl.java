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
	public void update(NhiemVu nhiemVu, NhiemVu oldNhiemVu) {
		this.nhiemVuDao.update(nhiemVu,oldNhiemVu);
		
	}
	@Override
	public List<NhiemVu> getAll(int maDuAn) {
		
		return this.nhiemVuDao.getAll(maDuAn);
	}

	@Override
	public List<NhiemVu> getById(int maDuAn,int maNhanVien) {
	
		return this.nhiemVuDao.getById(maDuAn,maNhanVien);
	}

	@Override
	public void delete(NhiemVu nhiemvu) {
		this.nhiemVuDao.delete(nhiemvu);
		
	}

	@Override
	public NhiemVu getDetailNhiemVu(int maDuAn, int maNhanVien, String maVaiTro) {
		// TODO Auto-generated method stub
		return this.nhiemVuDao.getDetailNhiemVu(maDuAn, maNhanVien, maVaiTro);
	}

}
