package fasttrackse.ffse1702a.fbms.quanlytailieu.dao;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Category;
import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Document;

public interface DocumentDAO {
	// list
	public List<Document> getAll();
	
	//list my draft
	public List<Document> getAllDraft();
	
	//list pending approve
	public List<Document> getAllPendingApprove();
	
	//list public document
	public List<Document> getAllPublicDocument();
	
	//--------------  insert  -----------------//
	//by draft
	public void saveDraft(final Document document);
	//by pending approve
	
	//----------------------------------------//
	
	//update
	public void updateDocument(final Document document);
	
	//delete
	public void delete(final int id);

	// list category
	public List<Category> listCategory();
	
	
	//find by id
	public Document findById(final int id);
	
	//upload file
	public Map<String, String> uploadfile(@RequestParam(value="file") CommonsMultipartFile commonsMultipartFiles,HttpServletRequest request,ModelMap modelMap);

}
