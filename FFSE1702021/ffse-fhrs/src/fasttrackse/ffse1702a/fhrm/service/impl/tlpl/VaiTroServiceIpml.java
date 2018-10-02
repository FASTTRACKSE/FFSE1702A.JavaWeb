package fasttrackse.ffse1702a.fhrm.service.impl.tlpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse.ffse1702a.fhrm.dao.tlpl.VaiTroDao;
import fasttrackse.ffse1702a.fhrm.entity.tlpl.VaiTro;
import fasttrackse.ffse1702a.fhrm.service.tlpl.VaiTroService;

@Service
public class VaiTroServiceIpml implements VaiTroService{
	@Autowired 
	VaiTroDao vaiTroDao;

	@Override
	public void save(VaiTro vaitro) {
		// TODO Auto-generated method stub
		this.vaiTroDao.save(vaitro);
	}

	@Override
	public VaiTro getById(String maVaiTro) {
		// TODO Auto-generated method stub
		return this.vaiTroDao.getById(maVaiTro);
	}

	@Override
	public List<VaiTro> getAll() {
		// TODO Auto-generated method stub
		return this.vaiTroDao.getAll();
	}

	@Override
	public void update(VaiTro vaitro) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(String maVaiTro) {
		// TODO Auto-generated method stub
		
	}
}
