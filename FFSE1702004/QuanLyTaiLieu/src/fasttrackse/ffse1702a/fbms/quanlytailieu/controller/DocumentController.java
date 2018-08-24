package fasttrackse.ffse1702a.fbms.quanlytailieu.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import fasttrackse.ffse1702a.fbms.quanlytailieu.dto.DocumentDTO;
import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Category;
import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Document;
import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Icon;
import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Status;
import fasttrackse.ffse1702a.fbms.quanlytailieu.service.DocumentService;

@Controller
public class DocumentController {

	@Autowired
	private DocumentService documentService;

	// -------------- my document ----------//
	@RequestMapping(value = { "/", "/index" }, method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("listDocument", documentService.getAll());
		return "index";
	}
	
	// edit document
	@RequestMapping(value = "/documentEdit/{id}" , method = RequestMethod.GET)
	public String documentEdit(@PathVariable int id, Model model) {
		model.addAttribute("document", documentService.findById(id));
		return "documentInsert";
	}

	// ------------- insert --------------//
	// redirect page add document
	@RequestMapping(value = "/documentInsert")
	public String documentInsert(Model model) {
		model.addAttribute("document", new DocumentDTO());
		return "documentInsert";
	}

	// draft
	@RequestMapping(value = "/documentSave/draft")
	public String saveDraft(@ModelAttribute("document") DocumentDTO DocumentDTO, HttpServletRequest request, ModelMap modelMap) {
		
		if(DocumentDTO.getId() == 0) {	
		Document document = new Document();
		BeanUtils.copyProperties(DocumentDTO, document);
		Map<String, String> filename = documentService.uploadfile(DocumentDTO.getFile(), request, modelMap);
		document.setFile(filename.get("urlImage"));
		Icon ic= new Icon();
		Status st = new Status();
		st.setMa_trang_thai("nhap");
		ic.setMa_icon(filename.get("extensionImage"));	
		document.setMa_icon(ic);
		document.setMa_trang_thai(st);
		documentService.saveDraft(document);
		
		} 
		else {	
			Document document = new Document();
			if(document.getFile() == null) {
				Map<String, String> filename = documentService.uploadfile(DocumentDTO.getFile(), request, modelMap);
				document.setFile(filename.get("urlImage"));
				Icon ic= new Icon();
				ic.setMa_icon(filename.get("extensionImage"));
				document.setMa_icon(ic);
			}
			Status st = new Status();
			st.setMa_trang_thai("nhap");
			document.setMa_trang_thai(st);
			documentService.updateDocument(document);	
		}
		return "redirect:/";
		
	}
	// ----------------- delete ----------------//
		@RequestMapping(value = "/documentDelete/{id}", method = RequestMethod.GET)
		public String documentDelete(@PathVariable int id, Model model) {
			documentService.delete(id);
			return "redirect:/";
		}
	
	// submit pendding approve
	@RequestMapping(value = "/documentSave")
	public String saveDocument(@ModelAttribute("document") DocumentDTO DocumentDTO, HttpServletRequest request, ModelMap modelMap) {
		if(DocumentDTO.getId() == 0) {	
			Document document = new Document();
			BeanUtils.copyProperties(DocumentDTO, document);
			Map<String, String> filename = documentService.uploadfile(DocumentDTO.getFile(), request, modelMap);
			document.setFile(filename.get("urlImage"));
			Icon ic= new Icon();
			Status st = new Status();
			st.setMa_trang_thai("cho_phe_duyet");
			ic.setMa_icon(filename.get("extensionImage"));	
			document.setMa_icon(ic);
			document.setMa_trang_thai(st);
			documentService.saveDraft(document);
			} else {
				Document document = new Document();
				BeanUtils.copyProperties(DocumentDTO, document);
				if(document.getFile() == null) {
					Map<String, String> filename = documentService.uploadfile(DocumentDTO.getFile(), request, modelMap);
					document.setFile(filename.get("urlImage"));
					Icon ic= new Icon();
					ic.setMa_icon(filename.get("extensionImage"));
					document.setMa_icon(ic);
				}
				Status st = new Status();
				st.setMa_trang_thai("cho_phe_duyet");
				document.setMa_trang_thai(st);
				documentService.updateDocument(document);	
			}
			return "redirect:/";
	}
	// ------------------------------------//

	// -------------- my draft document ----------//
	@RequestMapping(value = "/myDraft", method = RequestMethod.GET)
	public String mydraft(Model model) {
		model.addAttribute("listDraft", documentService.getAllDraft());
		return "mydraft";
	}

	// ----------- document pending approve -------//
	@RequestMapping(value = "/pendingApprove", method = RequestMethod.GET)
	public String pendingApprove(Model model) {
		model.addAttribute("listPendingApprove", documentService.getAllPendingApprove());
		return "pendingapprove";
	}

	// ----------- document public -------//
	@RequestMapping(value = "/documentPublic", method = RequestMethod.GET)
	public String documentPublic(Model model) {
		model.addAttribute("listPublicDocument", documentService.getAllPublicDocument());
		return "documentpublic";
	}

	// get tên danh mục
	@ModelAttribute("listCategory")
	public List<Category> listCategory() {
		return this.documentService.listCategory();
	}

}
