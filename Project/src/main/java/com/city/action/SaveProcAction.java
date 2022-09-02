package com.city.action;

import java.io.IOException;
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
		Random rand = new Random(); /* idCheck를 랜덤으로 추가해주기 위해 객체 생성 */
		String id = "han";
		String idCheck_set = "";
		List<String> arry = dao.idCheck(id); /* ex) id가 han인 유저가 저장한 plan들을 모두 불러옴 */
		if(arry.size() == 0){ /* plan이 없으면 (처음 저장하는거면) */
			idCheck_set = rand.nextInt(10)+id+rand.nextInt(10); /* 아이디 양옆에 랜덤으로 숫자부여 ex) 9han8 */
		} else { /* plan이 있으면 그 idCheck의 숫자 옆에 추가 지정 */
			idCheck_set = rand.nextInt(10)+arry.get(arry.size()-1)+rand.nextInt(10) ; /* 기존 idCheck 양옆에 랜덤으로 숫자부여 ex) 9han8 => 89han82 */
		}
		
		request.setAttribute("idCheck_set", idCheck_set);
		return new ActionForward("/project/saveProc.jsp", false);
	}

}
