package fasttrackse.a1702.fbms.chucnangchucdanh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse.a1702.fbms.chucnangchucdanh.model.dao.ChucNangChucDanhDao;
import fasttrackse.a1702.fbms.chucnangchucdanh.model.entities.ChucNangChucDanh;

@Service
public class ChucNangChucDanhServiceImpl implements ChucNangChucDanhService{
	
	@Autowired
	ChucNangChucDanhDao chucNangChucDanhDao;

	public ChucNangChucDanhDao getChucNangChucDanhDao() {
		return chucNangChucDanhDao;
	}

	public void setChucNangChucDanhDao(ChucNangChucDanhDao chucNangChucDanhDao) {
		this.chucNangChucDanhDao = chucNangChucDanhDao;
	}

	@Override
	public List<ChucNangChucDanh> findAll() {
		return chucNangChucDanhDao.findAll();
	}

	@Override
	public void addNew(String maChucDanh, List<String> maChucNang) {
		chucNangChucDanhDao.addNew(maChucDanh, maChucNang);
	}

	@Override
	public void update(String maChucDanh, List<String> maChucNang) {
		chucNangChucDanhDao.update(maChucDanh, maChucNang);
	}

	@Override
	public void delete(String maChucDanh) {
		chucNangChucDanhDao.delete(maChucDanh);
	}

	@Override
	public List<Object> findAllForPaging(int startPosition, int maxResult) {
		return chucNangChucDanhDao.findAllForPaging(startPosition, maxResult);
	}

	@Override
	public List<Object> getMaChucNangByMaChucDanh(String maChucDanh) {
		return chucNangChucDanhDao.getMaChucNangByMaChucDanh(maChucDanh);
	}

}
