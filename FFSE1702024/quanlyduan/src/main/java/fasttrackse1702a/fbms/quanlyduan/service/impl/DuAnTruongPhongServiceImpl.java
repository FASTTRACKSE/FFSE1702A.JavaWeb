package fasttrackse1702a.fbms.quanlyduan.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse1702a.fbms.quanlyduan.dao.DuAnTruongPhongDao;
import fasttrackse1702a.fbms.quanlyduan.entity.DuAnTruongPhong;
import fasttrackse1702a.fbms.quanlyduan.service.DuAnTruongPhongService;

@Service
public class DuAnTruongPhongServiceImpl implements DuAnTruongPhongService{
	@Autowired
	DuAnTruongPhongDao duAnDao;
	@Override
	public void save(DuAnTruongPhong duAn) {
		this.duAnDao.save(duAn);
		
	}

}
