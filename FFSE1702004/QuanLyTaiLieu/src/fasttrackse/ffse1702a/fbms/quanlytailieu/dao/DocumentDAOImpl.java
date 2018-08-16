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
	
	public List<Document> getAll(){
		Session session = sessionFactory.getCurrentSession();
		Query<?> query=session.createQuery("from Document",Document.class);
		List<Document> listDocument = (List<Document>) query.list();
		return listDocument;
	}
	
	// list category
		public List<Category> listCategory(){
			Session session = sessionFactory.getCurrentSession();
			Query<?> query=session.createQuery("from Category",Category.class);
			List<Category> listCategory = (List<Category>) query.list();
			return listCategory;	
		}

}
