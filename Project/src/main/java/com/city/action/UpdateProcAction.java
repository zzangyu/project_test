package com.city.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.city.control.ActionForward;
import com.city.model.CityDAO;
import com.city.model.SaveCityVO;

public class UpdateProcAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		request.setCharacterEncoding("utf-8");
		String id = "han"; // ���߿� session�� �޴°ɷ� �ٲ����
		// String idCheck = request.getParameter("idCheck"); // �굵 �ٲ����
		String idCheck = "1441578han6915909"; // �굵 �ٲ����
		CityDAO dao = CityDAO.getInstance();
		List<SaveCityVO> arry = dao.getCity(idCheck, id); // ������ ����� ����� ��������
		dao.deletePlan(idCheck);
		boolean check = false; // ����ƴ� ����, ���Ӱ� ����Ǵ� ������ ������ ������ false�� ���ø� �߰��϶�� alert�����
		for(int i = 1; i <= arry.size(); i++){ // ����� ����ŭ for��
			if(request.getParameter("bfcityEn"+i) != null) { // ����� ������ ���� ������ �� if�� ���
				dao.savePlan(id, idCheck, request.getParameter("bfcityEn"+i), request.getParameter("bfcityKr"+i), request.getParameter("bfsche"+i));
				// ��� ���� �޾Ƽ� insert�ϴ� sql���� ���� +i�� planInsert.jsp���� �Ѿ�� ������ ������ �ǹ�
				check = true;
				// ����� ���� �����Ƿ� true�� ����
			}
		}
		int count; // ���Ӱ� �߰��� ���õ��� ���� ��Ÿ���� ���� ����
		if(request.getParameterValues("count") != null){ // count�� ���� null�̶�� ������ ����
			count = request.getParameterValues("count").length; // ���Ӱ� �߰��� ���õ��� ���� ��Ÿ��
			
			for(int i = 1; i <= count; i++){ // ���Ӱ� �߰��� ���õ��� ���̸�ŭ for��
				if(request.getParameter("cityEn"+i) != null) { // ����� ������ ���� ������ �� if�� ���
					dao.savePlan(id, idCheck, request.getParameter("cityEn"+i), request.getParameter("cityKr"+i), request.getParameter("sche"+i));
					// ��� ���� �޾Ƽ� insert�ϴ� sql���� ���� +i�� planInsert.jsp���� �Ѿ�� ������ ������ �ǹ�
					check = true;
					// ����� ���� �����Ƿ� true�� ����
				}
			}
		}
		request.setAttribute("check", check);
		return new ActionForward("/project/updateProc.jsp", false);
	}

}
