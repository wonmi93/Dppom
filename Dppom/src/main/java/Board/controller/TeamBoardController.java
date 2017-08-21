package Board.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

// 팀원 구하기 컨트롤러
@Controller
public class TeamBoardController {

	//사람구하기 게시판
	 @RequestMapping("TeamBoard")
	 public String TeamBoard(Model model, HttpServletRequest req){
		 
		 //데이터 처리
		 
		 return "Board/TeamBoard";
		 
	 }
}
