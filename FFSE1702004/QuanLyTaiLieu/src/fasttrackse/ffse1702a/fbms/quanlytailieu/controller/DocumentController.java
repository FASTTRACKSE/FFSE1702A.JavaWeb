package fasttrackse.ffse1702a.fbms.quanlytailieu.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

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
	public String index(Model model ,Integer offset, Integer maxResults) {
		
		List<Document> list =  documentService.getAll(offset, maxResults);
        model.addAttribute("count", documentService.count());
        model.addAttribute("offset", offset);
        model.addAttribute("listDocument", list);		
		return "index";
	}

	// approve document
	@RequestMapping(value = "/documentAccept/{id}", method = RequestMethod.GET)
	public String documentAccept(@PathVariable int id, Model model) {
		documentService.accept(id);
		return "redirect:/";
	}
	// approve document
		@RequestMapping(value = "/documentRefuse/{id}", method = RequestMethod.GET)
		public String documentRefuse(@PathVariable int id, Model model) {
			documentService.refuse(id);
			return "redirect:/";
		}

	// ----------------- delete ----------------//
	@RequestMapping(value = "/documentDelete/{id}", method = RequestMethod.GET)
	public String documentDelete(@PathVariable int id, Model model) {
		documentService.delete(id);
		return "redirect:/";
	}

	// edit document
	@RequestMapping(value = "/documentEdit/{id}", method = RequestMethod.GET)
	public String documentEdit(@PathVariable int id, Model model) {
		model.addAttribute("document", documentService.findById(id));
		return "documentUpdate";
	}
	// view document
		@RequestMapping(value = "/documentView/{id}", method = RequestMethod.GET)
		public String documentView(@PathVariable int id, Model model) {
			model.addAttribute("document", documentService.findById(id));
			return "documentView";
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
	public String saveDraft(@ModelAttribute("document") DocumentDTO DocumentDTO, HttpServletRequest request,
			ModelMap modelMap) {

		if (DocumentDTO.getId() == 0) {
			Document document = new Document();
			BeanUtils.copyProperties(DocumentDTO, document);
			Map<String, String> filename = documentService.uploadfile(DocumentDTO.getFile(), request, modelMap);
			document.setFile(filename.get("urlImage"));
			Icon ic = new Icon();
			Status st = new Status();
			st.setMa_trang_thai("nhap");
			ic.setMa_icon(filename.get("extensionImage"));
			document.setMa_icon(ic);
			document.setMa_trang_thai(st);
			documentService.saveDraft(document);

		} else {
			Document document = new Document();
			BeanUtils.copyProperties(DocumentDTO, document);	
			Status st = new Status();
			st.setMa_trang_thai("cho_phe_duyet");
			document.setMa_trang_thai(st);
			documentService.updateDocument(document);
		}
		return "redirect:/";

	}

	// submit pendding approve
	@RequestMapping(value = "/documentSave")
	public String saveDocument(@ModelAttribute("document") @Validated DocumentDTO DocumentDTO, BindingResult bindingResult, HttpServletRequest request,
			ModelMap modelMap) {
		if (DocumentDTO.getId() == 0) {
			Document document = new Document();
			BeanUtils.copyProperties(DocumentDTO, document);
			Map<String, String> filename = documentService.uploadfile(DocumentDTO.getFile(), request, modelMap);
			document.setFile(filename.get("urlImage"));
			if(bindingResult.hasErrors()) {
				return "documentInsert";
 			}
			Icon ic = new Icon();
			Status st = new Status();
			st.setMa_trang_thai("cho_phe_duyet");
			ic.setMa_icon(filename.get("extensionImage"));
			document.setMa_icon(ic);
			document.setMa_trang_thai(st);
			documentService.saveDraft(document);
		} else {
			Document document = new Document();
			BeanUtils.copyProperties(DocumentDTO, document);
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
