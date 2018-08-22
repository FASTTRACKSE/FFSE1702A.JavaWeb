package fasttrackse.ffse1702a.fbms.quanlytailieu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Category;
import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Document;
import fasttrackse.ffse1702a.fbms.quanlytailieu.service.DocumentService;

@Controller
public class DocumentController {

	@Autowired
	private DocumentService documentService;

	// my document
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("listDocument", documentService.getAll());
		return "list";
	}

	// -------------  insert  --------------//
	//redirect  page add document  
	@RequestMapping(value = "/documentInsert")
	public String documentInsert(Model model) {
		model.addAttribute("document", new Document());
		return "documentInsert";
	}
	
	// draft
	@RequestMapping(value = "/documentSave/draft")
	public String saveDraft(@ModelAttribute("Document") Document document, Model model) {
		documentService.saveDraft(document);
		System.out.println(document.getMa_danh_muc());
		return "redirect:/list";
	}
	
	//submit pendding approve
	
	// --------------------------//
	
	// -----------   delete  ----------------//
	@RequestMapping(value = "/documentDelete/{id}", method = RequestMethod.GET)
	public String documentDelete(@PathVariable int id, Model model) {
		documentService.delete(id);
		return "redirect:/";
	}
	// --------------------------//

	// get tên danh mục
	@ModelAttribute("listCategory")
	public List<Category> listCategory() {
		return this.documentService.listCategory();
	}

}
