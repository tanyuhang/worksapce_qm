package swb.action;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

 @Controller("logicActionController")
@RequestMapping(value="/logicAction")
public class LogicActionController {

	public Logger log=Logger.getLogger(this.getClass());
	/**
	 * 管理员访问项目，默认跳转到登陆视图
	 * @return
	 */
	@RequestMapping(value="/m_SkipLoginView.swb")
	public String LoginMethon(){
		return "login_regist/login";
	}
	
	/**
	 * 管理员登陆页面
	 * @param lf
	 * @return
	 */
	@RequestMapping(value="/loginMethon.swb",method = RequestMethod.POST)
	public String LoginMethon1(@ModelAttribute("loginform")ManagerLogin lf){
		log.info(lf.getUsername() +"  "+lf.getPassword() );
		//System.out.println(lf.getUsername() +"  "+lf.getPassword() );
		return "login_regist/login";
	}
}
