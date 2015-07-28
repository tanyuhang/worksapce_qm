package swb.business.manager;

import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller("navigationActionController")
@RequestMapping(value="/navigation")
public class NavigationActionController {

	public Logger log=Logger.getLogger(this.getClass());

	@RequestMapping(value="/navigationmb.swb",method = RequestMethod.GET)
	public ModelAndView  LoginMethon1(@RequestParam("mainid")String lf){
		log.info(lf );
		//System.out.println(lf.getUsername() +"  "+lf.getPassword() );
		Map<String,String> mb=new HashMap<String,String>();
		mb.put("mb", "mbaa");
		return new ModelAndView("manager/home",mb);
	}
}
