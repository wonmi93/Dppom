package recomm.command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import recomm.model.RecommDAO;
import recomm.model.RecommDTO;

public class RecommCommand 
{
	public void execute(Model model)
	{
		RecommDAO dao = new RecommDAO();
		
		Map<String, Object> map = model.asMap();
		
		HttpServletRequest req = (HttpServletRequest)map.get("req");
		
		List<RecommDTO> recommData = dao.selectAll(map);
		
		model.addAttribute("recommData", recommData);
		
		dao.close();
	}
}
