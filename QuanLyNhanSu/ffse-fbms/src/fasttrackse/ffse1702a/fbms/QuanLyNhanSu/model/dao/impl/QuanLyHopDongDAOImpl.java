package fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.dao.impl;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

<<<<<<< HEAD:QuanLyNhanSu/ffse-fbms/src/fasttrackse/a1702/fbms/QuanLyNhanSu/model/dao/impl/QuanLyHopDongDAOImpl.java
import fasttrackse.a1702.fbms.QuanLyNhanSu.model.dao.QuanLyHopDongDAO;
import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.HopDong;

=======
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.dao.QuanLyHopDongDAO;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.HopDong;
>>>>>>> 8b7f4c2d146fd5b34d7a80fea256393f5bef2c34:QuanLyNhanSu/ffse-fbms/src/fasttrackse/ffse1702a/fbms/QuanLyNhanSu/model/dao/impl/QuanLyHopDongDAOImpl.java
@Repository
public class QuanLyHopDongDAOImpl implements QuanLyHopDongDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addHopDong(HopDong tthd) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(tthd);
	}

	@Override
	public void updateHopDong(HopDong tthd) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(tthd);
	}
}
