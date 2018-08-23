package fasttrackse.ffse1702a.fbms.quanlytailieu.dao;

import java.util.List;

import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Category;
import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Document;

public interface DocumentDAO {
	// list
	public List<Document> getAll();

	//--------------  insert  -----------------//
	//by draft
	public void saveDraft(final Document document);
	//by pending approve
	
	//----------------------------------------//
	
	
	//delete
	public void delete(final int id);

	// list category
	public List<Category> listCategory();
	
	//find by id
	public Document findById(final int id);
}
