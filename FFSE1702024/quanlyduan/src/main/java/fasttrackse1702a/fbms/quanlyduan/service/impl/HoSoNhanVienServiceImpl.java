package fasttrackse1702a.fbms.quanlyduan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse1702a.fbms.quanlyduan.dao.HoSoNhanVienDao;
import fasttrackse1702a.fbms.quanlyduan.entity.HoSoNhanVien;
import fasttrackse1702a.fbms.quanlyduan.service.HoSoNhanVienService;

@Service
public class HoSoNhanVienServiceImpl implements HoSoNhanVienService{
	@Autowired
	HoSoNhanVienDao hoSoNhanVienDao;
	@Override
	public List<HoSoNhanVien> getAll() {
		return hoSoNhanVienDao.getAll();
	}

	@Override
	public HoSoNhanVien getByID(int idNhanVien) {
		// TODO Auto-generated method stub
		return hoSoNhanVienDao.getByID(idNhanVien);
	}

}
