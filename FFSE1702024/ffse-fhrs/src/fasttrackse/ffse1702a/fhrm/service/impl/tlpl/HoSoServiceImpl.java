package fasttrackse.ffse1702a.fhrm.service.impl.tlpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse.ffse1702a.fhrm.dao.tlpl.HoSoDao;
import fasttrackse.ffse1702a.fhrm.entity.tlpl.HoSo;
import fasttrackse.ffse1702a.fhrm.service.tlpl.HoSoService;



@Service
public class HoSoServiceImpl implements HoSoService{
	@Autowired 
	HoSoDao hoSoDao;

	@Override
	public void save(HoSo hoso) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public HoSo getById(String maNhanVien) {
		// TODO Auto-generated method stub
		return this.hoSoDao.getById(maNhanVien);
	}

	@Override
	public List<HoSo> getAll() {
		// TODO Auto-generated method stub
		return this.hoSoDao.getAll();
	}

	@Override
	public void update(HoSo hoso) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(String maNhanVien) {
		// TODO Auto-generated method stub
		
	}
 }
