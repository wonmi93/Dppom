package Board.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

//자료실 컨트롤러 
@Controller  
public class DataBoardController {

	//자료실 게시판
	 @RequestMapping("DataBoard")
	 public String DataBoard(Model model, HttpServletRequest req){
		 
		 //데이터 처리
		 
		 return "Board/DataBoard";
		 
	 }
	 

}
