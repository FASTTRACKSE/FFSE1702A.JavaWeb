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
import org.springframework.web.bind.annotation.RequestParam;
import fasttrackse.ffse1702a.fbms.quanlytailieu.dto.DocumentDTO;
import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Category;
import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Document;
import fasttrackse.ffse1702a.fbms.quanlytailieu.entity.Icon;
import fasttrackse.ffse1702a.fbms.quanlytailieu.service.DocumentService;

@Controller
public class DocumentController {

	@Autowired
	private DocumentService documentService;

	// my document
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String index(Model model,@RequestParam(value = "page", defaultValue = "1") Integer page,
			Integer maxResult) {
		Integer offset = (page - 1) * 10;
		model.addAttribute("count", this.documentService);
		model.addAttribute("listDocument", documentService.count());
		model.addAttribute("offset", offset);
		model.addAttribute("document", new Document());
		model.addAttribute("documentList", documentService.getAll(offset, maxResult));
        return "list";
	}

	// ------------- insert --------------//
	// redirect page add document
	@RequestMapping(value = "/documentInsert")
	public String documentInsert(Model model) {
		model.addAttribute("document", new DocumentDTO());
		return "documentInsert";
	}

	@RequestMapping(value = "/documentUpdate/{id}")
	public String documentUpdate(@PathVariable int id, Model model) {
		Document document = documentService.findById(id);
		model.addAttribute("document", document);
		return "documentUpdate";
	}

	@RequestMapping(value = "update")
	public String Update(@ModelAttribute("document") Document document, Model model) {
		documentService.updateDocument(document);
		return "redirect:/list";
	}

	// draft
	@RequestMapping(value = "/documentSaveDraft", method = RequestMethod.POST)
	public String saveDraft(@ModelAttribute("document") DocumentDTO DocumentDTO,
			HttpServletRequest request, ModelMap modelMap) {
		Document document = new Document();
		BeanUtils.copyProperties(DocumentDTO, document);
		Map<String, String> filename = documentService.uploadfile(DocumentDTO.getFile(), request, modelMap);
		document.setTai_ve(filename.get("urlImage"));
		Icon ic= new Icon();
		ic.setMa_icon(filename.get("extensionImage"));	
		document.setMa_icon(ic);
		
		//document.setMa_trang_thai("nhap");
		// System.out.println(document.getMa_danh_muc());
		documentService.saveDraft(document);
		return "redirect:/list";
	}

	// submit pendding approve

	// --------------------------//

	// ----------- delete ----------------//
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
