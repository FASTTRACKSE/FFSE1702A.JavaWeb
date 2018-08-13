package fasttrackse.a1702.fbms.QuanLyNhanSu.model.dao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.HopDong;
@Repository
public class QuanLyHopDongDAOImpl implements QuanLyHopDongDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addThongTinHopDong(HopDong tthd) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(tthd);
	}

	@Override
	public void updateThongTinHopDong(HopDong tthd) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(tthd);
	}
}
