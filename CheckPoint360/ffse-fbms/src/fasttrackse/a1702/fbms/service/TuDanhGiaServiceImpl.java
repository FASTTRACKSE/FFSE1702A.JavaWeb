package fasttrackse.a1702.fbms.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse.a1702.fbms.model.dao.TuDanhGiaDAO;
import fasttrackse.a1702.fbms.model.entity.TuDanhGia;

@Service
public class TuDanhGiaServiceImpl implements TuDanhGiaService {

	@Autowired
	private TuDanhGiaDAO tuDanhGiaDAO;
	
	public void settuDanhGiaDAO(TuDanhGiaDAO tuDanhGiaDAO) {
		this.tuDanhGiaDAO = tuDanhGiaDAO; 
	}
	
	@Override
	@Transactional
	public void luuDanhGia(TuDanhGia tuDanhGia) {
		tuDanhGiaDAO.luuDanhGia(tuDanhGia);

	}

	@Override
	@Transactional
	public TuDanhGia xemNhap(int id) {
		
		return tuDanhGiaDAO.xemNhap(id);
	}

	@Override
	@Transactional
	public void suaNhap(TuDanhGia tuDanhGia) {
		tuDanhGiaDAO.suaNhap(tuDanhGia);

	}

	@Override
	@Transactional
	public void xoaNhap(int id) {
		tuDanhGiaDAO.xoaNhap(id);

	}

	@Override
	public void ketQua(TuDanhGia tuDanhGia) {
		// TODO Auto-generated method stub

	}

}
