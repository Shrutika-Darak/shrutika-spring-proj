package springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springmvc.dao.cityDao;
import springmvc.model.city;

@Controller
public class cityController {


	@Autowired  
	cityDao dao;
	
	@RequestMapping("/index")
	public String index() 
	{
		return "index";	
	}
	
    @RequestMapping("/cityform")    
    public String showform(Model m){    
        m.addAttribute("command", new city());  
        return "cityform";   
    }   
    
    @RequestMapping(value="/save",method = RequestMethod.POST)    
    public String save(@ModelAttribute("c") city c){    
        dao.save(c);    
        return "redirect:/viewcity";   
    }    
    
    @RequestMapping("/viewcity")    
    public String viewcity(Model m){    
        List<city> list=dao.getCity();    
        m.addAttribute("list",list);  
        return "viewcity";    
    }   
    
    @RequestMapping(value="/editcity/{id}")    
    public String edit(@PathVariable int id, Model m){    
        city c=dao.getcityById(id);    
        m.addAttribute("command",c);  
        return "cityeditform";    
    }    

    @RequestMapping(value="/editsave",method = RequestMethod.POST)    
    public String editsave(@ModelAttribute("c") city c){    
        dao.update(c);    
        return "redirect:/viewcity";    
    }    
 
    @RequestMapping(value="/deletecity/{id}",method = RequestMethod.GET)    
    public String delete(@ModelAttribute("c") city c){    
        dao.delete(c);    
        return "redirect:/viewcity";    
    } 
}
