package fasttrackse.a1702.fbms.logwork.service;

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

}
