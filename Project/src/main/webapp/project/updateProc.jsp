<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dbcp.DBCPPlanCityInfo" %>
<%@ page import="java.util.*" %>
<%@ page import="com.dbcp.SaveCityVO" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="citySave" class="com.dbcp.SaveCityVO" scope="page">
	<jsp:setProperty name="citySave" property="*"></jsp:setProperty>
</jsp:useBean>
<jsp:useBean id="dao" class="com.dbcp.DBCPPlanCityInfo"></jsp:useBean>

<%	
	String id = "han"; // 나중에 session값 받는걸로 바꿔야함
	String idCheck = request.getParameter("idCheck"); // 얘도 바꿔야함
	
	
	List<SaveCityVO> arry = dao.getCity(idCheck, id); // 기존에 저장된 나라들 가져오기
	
	
	dao.deletePlan(idCheck);
	boolean Check = false; // 저장됐던 나라, 새롭게 저장되는 나라의 값들이 없으면 false로 도시를 추가하라고 alert뜰거임
	for(int i = 1; i <= arry.size(); i++){ // 저장된 나라만큼 for문
		if(request.getParameter("bfcityEn"+i) != null) { // 저장된 나라의 값을 얻어왔을 때 if문 통과
			dao.savePlan(id, idCheck, request.getParameter("bfcityEn"+i), request.getParameter("bfcityKr"+i), request.getParameter("bfsche"+i));
			// 모든 값을 받아서 insert하는 sql문이 있음 +i는 planInsert.jsp에서 넘어온 값들의 순서를 의미
			Check = true;
			// 저장된 값이 있으므로 true로 변경
		}
	}
	int count; // 새롭게 추가한 도시들의 수를 나타내기 위해 생성
	if(request.getParameterValues("count") != null){ // count의 값이 null이라면 들어오지 못함
		count = request.getParameterValues("count").length; // 새롭게 추가한 도시들의 수를 나타냄
		
		for(int i = 1; i <= count; i++){ // 새롭게 추가한 도시들의 길이만큼 for문
			if(request.getParameter("cityEn"+i) != null) { // 저장된 나라의 값을 얻어왔을 때 if문 통과
				dao.savePlan(id, idCheck, request.getParameter("cityEn"+i), request.getParameter("cityKr"+i), request.getParameter("sche"+i));
				// 모든 값을 받아서 insert하는 sql문이 있음 +i는 planInsert.jsp에서 넘어온 값들의 순서를 의미
				Check = true;
				// 저장된 값이 있으므로 true로 변경
			}
		}
	}
	
	if(Check) { // 받아온 값이 있을 때 저장완료
%>
	<meta http-equiv="Refresh" content="0; url=CityInfoView.jsp">
	<script type="text/javascript">
		alert("<저장 완료>");
	</script>		
<%
	} else { // 받아온 값이 없을 때 추가요청 안내
%>
	<script type="text/javascript">
		alert("<도시를 추가해주세요.>");
		history.go(-1);
	</script>
<%		
	}
%>



