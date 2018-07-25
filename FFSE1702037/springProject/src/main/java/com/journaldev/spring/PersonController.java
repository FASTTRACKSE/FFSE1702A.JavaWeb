package com.journaldev.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.journaldev.spring.model.Person;
import com.journaldev.spring.service.PersonService;

@Controller
public class PersonController {
	
	private PersonService personService;
	
	@Autowired(required=true)
	@Qualifier(value="personService")
	public void setPersonService(PersonService ps){
		this.personService = ps;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String listPersons(Model model,@RequestParam(value="page",required=false,defaultValue="1") int page ) {
		//System.out.println(page);
		model.addAttribute("person", new Person());
		
		model.addAttribute("listPersons", this.personService.listPersons(page));
		int lastPage = (int) Math.ceil(this.personService.countPersons().intValue()/2.0);
		model.addAttribute("currentPage",page);
		model.addAttribute("lastPage", lastPage);
		return "person";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addPersonForm(Model model) {

		model.addAttribute("person", new Person());
		return "addPerson";
	}
	
	//For add and update person both
	@RequestMapping(value= "/save", method = RequestMethod.POST)
	public String addPerson(@ModelAttribute("person") Person p){
		
		if(p.getId() == 0){
			//new person, add it
			this.personService.addPerson(p);
		}else{
			//existing person, call update
			this.personService.updatePerson(p);
		}
		
		return "redirect:/";
		
	}
	
	@RequestMapping("/remove/{id}")
    public String removePerson(@PathVariable("id") int id){
		
        this.personService.removePerson(id);
        return "redirect:/";
    }
 
    @RequestMapping("/edit/{id}")
    public String editPerson(@PathVariable("id") int id, Model model){
        model.addAttribute("person", this.personService.getPersonById(id));
        return "addPerson";
    }

    
    
	
}