package com.city.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.city.control.ActionForward;
import com.city.model.CityDAO;
import com.city.model.CityVO;
import com.city.model.SaveCityVO;

public class PlanInsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		CityDAO dao = CityDAO.getInstance();
		String id = "han"; // ���Ƿ� ���� => session���� ���� ����
    	String idCheck = "7han5"; // ���Ƿ� ���� => ���������� �ϼ��Ǹ� ����
		List<SaveCityVO> arry = dao.getCity(idCheck, id);
		List<CityVO> arry2 = dao.getCity();
		
		request.setAttribute("id", id);
		request.setAttribute("idCheck", idCheck);
		request.setAttribute("arry", arry);
		request.setAttribute("arry2", arry2);
		return new ActionForward("/project/planInsert.jsp", false);
	}

}
