package Board.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

// 강의후기 컨트롤러 
@Controller
public class LectureBoardController {

	
	 //강의후기 게시판
	 @RequestMapping("LectureBoard")
	 public String LectureBoard(Model model, HttpServletRequest req){
		 
		 //데이터 처리
		 
		 return "Board/LectureBoard";
		 
	 }
	 
}
