package fasttrackse.ffse1702a.fbms.quanlytailieu.dao;

import java.util.List;

import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Category;
import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Document;

public interface DocumentDAO {
	//list
	public List<Document> getAll();
	
	// list category
	public List<Category> listCategory();
}
