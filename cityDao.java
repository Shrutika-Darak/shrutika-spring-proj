package springmvc.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springmvc.model.city;

@Transactional
@Repository
public class cityDao {

HibernateTemplate template;  
    
	public void setTemplate(HibernateTemplate template) {    
	    this.template = template;    
	} 

	public void save(city c){    
	    template.save(c);    
	}    
	public void update(city c){    
	   template.update(c);    
	}    
	public void delete(city c){    
	   template.delete(c);    
	}    


	public city getcityById(int id){    
	    city c = (city)this.template.get(city.class, id);
	    return c;  
	}    
	
	
	public List<city> getCity(){    
		List<city> list=new ArrayList<city>();  
	    list=template.loadAll(city.class);  
	    return list;     
	}  
}
