package dppom.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MembrController {
	
	//로그인 페이지 
	@RequestMapping("Login")
	public String login(Model model, HttpServletRequest req){
		System.out.println("login()");
		
		// 데이터 전달
		
		return "/member/Login";
		
	}
	
	// 회원가입페이지
		@RequestMapping("Join")
		public String join(Model model, HttpServletRequest req){
			System.out.println("회원가입");
			
			//데이터 
			
			return "member/Join";
			
		}

}
