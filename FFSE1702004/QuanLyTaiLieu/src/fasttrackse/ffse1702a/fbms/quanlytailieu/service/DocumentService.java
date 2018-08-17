package fasttrackse.ffse1702a.fbms.quanlytailieu.service;

import java.util.List;

import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Category;
import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Document;

public interface DocumentService {
	
	//list
	public List<Document> getAll();
	
	//list category
	public List<Category> listCategory();

}
