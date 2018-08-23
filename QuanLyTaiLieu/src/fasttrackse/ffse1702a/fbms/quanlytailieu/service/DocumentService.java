package fasttrackse.ffse1702a.fbms.quanlytailieu.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Category;
import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Document;

public interface DocumentService {
	
	//list
	public List<Document> getAll(Integer offset, Integer maxResult);
	
	//list category
	public List<Category> listCategory();
	
	//----------------   insert    ------------------//
	// by draft
	public void saveDraft(Document document);
	//by pending approve
	
	//----------------------------------------------//
	//delete
	public void delete(int id);
	
	public Document findById(int id);
	
	public Map<String, String> uploadfile(@RequestParam(value="file") CommonsMultipartFile commonsMultipartFiles,HttpServletRequest request,ModelMap modelMap);

	public void updateDocument(Document document);
	
	public Long count();
	



}
