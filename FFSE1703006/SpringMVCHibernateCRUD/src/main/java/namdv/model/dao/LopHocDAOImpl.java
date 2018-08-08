package namdv.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import namdv.model.entities.LopHoc;

@Repository
public class LopHocDAOImpl implements LopHocDAO {

	private static final Logger logger = LoggerFactory.getLogger(SinhVienDAOImpl.class);

	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<LopHoc> getAllLopHoc() {
		Session session = this.sessionFactory.getCurrentSession();
		List<LopHoc> lopHocList = session.createQuery("from LopHoc").list();
		for (LopHoc lh : lopHocList) {
			logger.info("LopHoc List::" + lh);
		}
		return lopHocList;
	}

	@Override
	public LopHoc getLopHocById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		LopHoc lh = (LopHoc) session.load(LopHoc.class, new Integer(id));
		logger.info("LopHoc loaded successfully, LopHoc details=" + lh);
		return lh;
	}

}
