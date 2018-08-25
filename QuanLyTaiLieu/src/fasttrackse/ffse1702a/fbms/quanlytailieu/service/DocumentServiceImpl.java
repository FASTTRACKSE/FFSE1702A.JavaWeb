package fasttrackse.ffse1702a.fbms.quanlytailieu.service;

import java.util.List;
import java.util.Map;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

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
	//finbyid
	public Document findById(int id){
		return documentDAO.findById(id);
	}
	
	// list my draft
	public List<Document> getAllDraft(){
		return documentDAO.getAllDraft();
	}
	
	// list pending approve
	public List<Document> getAllPendingApprove(){
		return documentDAO.getAllPendingApprove();
	}
	
	//list public document
	public List<Document> getAllPublicDocument(){
		return documentDAO.getAllPublicDocument();
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
	
	//upload file 
	public Map<String, String> uploadfile(@RequestParam(value="file") CommonsMultipartFile commonsMultipartFiles,HttpServletRequest request,ModelMap modelMap) {
		return documentDAO.uploadfile(commonsMultipartFiles, request, modelMap);
	}
	

}
