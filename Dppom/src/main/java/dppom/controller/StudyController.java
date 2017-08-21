package dppom.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

// 어학/자격증 컨트롤러 

@Controller
public class StudyController {

	//어학/자격증
	 @RequestMapping("/Study")
	 public String TeamBoard(Model model, HttpServletRequest req){
		 
		 //데이터 처리
		 
		 return "Study/Study";
		 
	 }
}