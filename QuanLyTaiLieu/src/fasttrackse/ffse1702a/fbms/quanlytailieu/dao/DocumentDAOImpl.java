package fasttrackse.ffse1702a.fbms.quanlytailieu.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Category;
import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Document;

@Repository
@Transactional(rollbackFor = Exception.class)
public class DocumentDAOImpl implements DocumentDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	//list 
	public List<Document> getAll() {
		Session session = sessionFactory.getCurrentSession();
		System.out.println("<br 1 />");
		Query<Document> query = session.createQuery("from Document", Document.class);
		List<Document> listDocument = (List<Document>) query.list();
		return listDocument;
	}

	// list category
	public List<Category> listCategory() {
		Session session = sessionFactory.getCurrentSession();
		System.out.println("<br 2 />");
		Query<Category> query = session.createQuery("from Category", Category.class);
		List<Category> listCategory = (List<Category>) query.list();
		return listCategory;
	}

					
	//-----------------   insert    --------------//
	
	// by draft
	public void saveDraft(final Document document) {
		Session session = this.sessionFactory.getCurrentSession();
		System.out.println("<br 3 />");	
		session.persist(document);
	}
	
	//by pending approve
	
	//---------------//////////////----------------//

	// delete
	public void delete(final int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Document document = findById(id);
		session.remove(document);
	}
	
	//find by id
	public Document findById(final int id) {
		Session session = this.sessionFactory.getCurrentSession();
		return session.get(Document.class, id);
	}

}
