package mypage.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import recomm.command.RecommCommand;
import report.command.ReportCommand;

@Controller
public class MypageController 
{
	@RequestMapping("/mypage/myHome")
	public String adminHome(Model model)
	{
		System.out.println("마이 페이지 접속");
		
		return "mypage/myHome";
	}
	
	@RequestMapping("/mypage/mymodify/myModify")
	public String boardAdmin(Model model)
	{
		System.out.println("회원수정");
		
		return "mypage/mymodify/myModify";
	}
	
	@RequestMapping("/mypage/myout/myOut")
	public String memberAdmin(Model model)
	{
		System.out.println("회원탈퇴");
		
		return "mypage/myout/myOut";
	}
	
	@RequestMapping("/mypage/mypoint/myPoint")
	public String recommAdmin(Model model, HttpServletRequest req)
	{
		System.out.println("내포인트내역 조회");
		
		/*
		model.addAttribute("req", req);
		
		RecommCommand rc = new RecommCommand();
		rc.execute(model);
		*/
		
		return "mypage/mypoint/myPoint";
	}
	
	@RequestMapping("/mypage/mywritinglist/myWritingList")
	public String reportAdmin(Model model, HttpServletRequest req)
	{
		System.out.println("내글보기");
		
		/*
		model.addAttribute("req", req);
		
		ReportCommand rc = new ReportCommand();
		rc.execute(model);
		*/
		
		return "mypage/mywritinglist/myWritingList";
	}
}
