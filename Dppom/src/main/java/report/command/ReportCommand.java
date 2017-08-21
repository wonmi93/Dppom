package report.command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import report.model.ReportDAO;
import report.model.ReportDTO;

public class ReportCommand 
{
	public void execute(Model model)
	{
		ReportDAO dao = new ReportDAO();
		
		Map<String, Object> map = model.asMap();
		
		HttpServletRequest req = (HttpServletRequest)map.get("req");
		
		List<ReportDTO> reportData = dao.selectAll(map);
		
		model.addAttribute("reportData", reportData);
		
		dao.close();
	}
}
