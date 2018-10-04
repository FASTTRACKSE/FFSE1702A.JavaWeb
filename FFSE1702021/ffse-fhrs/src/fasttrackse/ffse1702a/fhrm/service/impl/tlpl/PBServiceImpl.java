package fasttrackse.ffse1702a.fhrm.service.impl.tlpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse.ffse1702a.fhrm.dao.tlpl.PBDao;
import fasttrackse.ffse1702a.fhrm.entity.tlpl.PB;
import fasttrackse.ffse1702a.fhrm.service.tlpl.PBService;



@Service
public class PBServiceImpl implements PBService{
	@Autowired 
	PBDao phongBanDao;

	@Override
	public void save(PB phongban) {
		// TODO Auto-generated method stub
		this.phongBanDao.save(phongban);
	}

	@Override
	public PB getById(String maPhongBan) {
		// TODO Auto-generated method stub
		return this.phongBanDao.getById(maPhongBan);
	}

	@Override
	public List<PB> getAll() {
		// TODO Auto-generated method stub
		return this.phongBanDao.getAll();
	}

	@Override
	public void update(PB phongban) {
		// TODO Auto-generated method stub
		this.phongBanDao.update(phongban);
	}

	@Override
	public void delete(String maPhongBan) {
		// TODO Auto-generated method stub
		
	}
	

}
