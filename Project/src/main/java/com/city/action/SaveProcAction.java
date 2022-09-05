package com.city.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.city.control.ActionForward;
import com.city.model.CityDAO;

public class SaveProcAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		request.setCharacterEncoding("utf-8");
		CityDAO dao = CityDAO.getInstance();
		Random rand = new Random(); /* idCheck�� �������� �߰����ֱ� ���� ��ü ���� */
		String id = "han";
		String idCheck_set = "";
		List<String> arry = dao.idCheck(id); /* ex) id�� han�� ������ ������ plan���� ��� �ҷ��� */
		if(arry.size() == 0){ /* plan�� ������ (ó�� �����ϴ°Ÿ�) */
			idCheck_set = rand.nextInt(10)+id+rand.nextInt(10); /* ���̵� �翷�� �������� ���ںο� ex) 9han8 */
		} else { /* plan�� ������ �� idCheck�� ���� ���� �߰� ���� */
			idCheck_set = rand.nextInt(10)+arry.get(arry.size()-1)+rand.nextInt(10); /* ���� idCheck �翷�� �������� ���ںο� ex) 9han8 => 89han82 */
		}
		String cityEn1 = request.getParameter("cityEn1");
		if(request.getParameter("cityEn1") != null){ /* ���� ���� ���� �� ==> �� ù��° ���� cityEn1�� �����س��� ������ ������ �ƹ� ���� �ȿ°� */
			int count = request.getParameterValues("count").length;
				for(int i = 1; i <= count; i++){
				if(request.getParameter("cityEn"+i) != null) { /* 1,2,3,4,5 �̷��� �����ϴٰ� 3�̳� 4�� ���� ������ �� ���� ����� ������ �ϱ� ���� (cityEn3�� ���� ������ �������� ����)*/
					dao.savePlan(id, idCheck_set, request.getParameter("cityEn"+i), request.getParameter("cityKr"+i), request.getParameter("sche"+i));
				}
			}
		}
		request.setAttribute("cityEn1", cityEn1);
		request.setAttribute("idCheck_set", idCheck_set);
		return new ActionForward("/project/saveProc.jsp", false);
	}

}
