package fasttrackse.ffse1702a.fbms.quanlytailieu.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.ffse1702a.fbms.quanlytailieu.dao.DocumentDAO;
import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Category;
import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Document;

@Service
public class DocumentServiceImpl implements DocumentService {

	@Autowired
	private DocumentDAO documentDAO;

	// list
	@Transactional
	public List<Document> getAll() {
		return documentDAO.getAll();
	}

			 
	//------------    insert    --------------------//
	// by draft
	public void saveDraft(Document document) {
		documentDAO.saveDraft(document);
	}
	// by pending approve
	
	//---------------------------------------------//
	
	//delete
	public void delete(int id) {
		documentDAO.delete(id);
	}

	// list category
	public List<Category> listCategory() {
		return documentDAO.listCategory();
	}

}
