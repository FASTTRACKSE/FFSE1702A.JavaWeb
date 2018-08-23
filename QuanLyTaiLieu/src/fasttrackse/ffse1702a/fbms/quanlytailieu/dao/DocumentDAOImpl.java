package fasttrackse.ffse1702a.fbms.quanlytailieu.dao;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Category;
import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Document;

@Repository
@Transactional(rollbackFor = Exception.class)
public class DocumentDAOImpl implements DocumentDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	//list 
	@SuppressWarnings("unchecked")
	public List<Document> getAll(Integer offset, Integer maxResult) {
	    @SuppressWarnings("deprecation")
		List<Document> listDocument = sessionFactory.getCurrentSession().createCriteria(Document.class)
				.setFirstResult(offset != null ? offset : 0).setMaxResults(maxResult != null ? maxResult : 10)
				.list();
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
	//Update Document
	@Transactional
	 public void updateDocument(Document document) {
		 Session session = sessionFactory.getCurrentSession();
		 session.update(document);
	}
	//Upload File
	public Map<String, String> uploadfile(@RequestParam(value="file") CommonsMultipartFile commonsMultipartFiles,HttpServletRequest request,ModelMap modelMap) {
		Map<String, String> result = new HashMap<String, String>();
		String nameFile = commonsMultipartFiles.getOriginalFilename();
		String fileExtension = FilenameUtils.getExtension(commonsMultipartFiles.getOriginalFilename());
		
		System.out.println(fileExtension);
		
		result.put("extensionImage", fileExtension);

		System.out.println(nameFile);
		if(!"".equals(nameFile)){
            //Đường dẫn link đến file
			String dirFile = request.getServletContext().getRealPath("upload");
			//In ra đường link dẫn đến file
			System.out.println(dirFile+"/"+nameFile);
			//In đường link dẫn đến thư mục chứa file
			System.out.println(dirFile);
			File fileDir = new File(dirFile);
			if(!fileDir.exists()){
				fileDir.mkdir();				
			}
			try {
				//Upload file lên sever
				commonsMultipartFiles.transferTo(new File(fileDir+File.separator+nameFile));
				result.put("urlImage", request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/upload/" + nameFile);
				System.out.println("Upload file thành công!");
//				modelMap.addAttribute("filename", nameFile);
			} catch (Exception e) {
				System.out.println(e.getMessage());
				System.out.println("Upload file thất bại!");
			}
		}
		return result;
	}
	
	@SuppressWarnings("deprecation")
	public Long count() {
		 return (Long) sessionFactory.getCurrentSession().createCriteria(Document.class)
					.setProjection(Projections.rowCount()).uniqueResult();
	}

}
