package fasttrackse.a1702.fbms.logwork.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.a1702.fbms.logwork.dao.LogworkDAO;
import fasttrackse.a1702.fbms.logwork.entity.ThoiGianLamViec;

@Service
@Transactional("myTransactionManager")
public class LogworkServiceimpl implements LogworkService{

	@Autowired
	LogworkDAO logworkDAO;
	
	public void setLogworkDAO(LogworkDAO logworkDAO) {
		this.logworkDAO = logworkDAO;
	}

	@Override
	public void create(ThoiGianLamViec logWork) {
		logworkDAO.create(logWork);
	}



	@Override
	public List<ThoiGianLamViec> getAllForPaging(int startPosition, int maxResult) {
		return logworkDAO.getAllForPaging(startPosition, maxResult);
	}

	@Override
	public List<ThoiGianLamViec> getAll() {
		// TODO Auto-generated method stub
		return logworkDAO.getAll();
	}

}
