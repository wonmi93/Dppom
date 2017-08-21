package top.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

// TOP ( 로그인 , 회원가입 ) 컨트롤러 
@Controller
public class TopController {
	
	//로그인 페이지 
	@RequestMapping("Login")
	public String login(Model model, HttpServletRequest req){
		System.out.println("login()");
		
		// 데이터 전달
		
		return "/top/Login";
		
	}
	
	// 회원가입페이지
		@RequestMapping("Join")
		public String join(Model model, HttpServletRequest req){
			System.out.println("join()");
			
			//데이터 
			
			return "top/Join";
			
		}

}
