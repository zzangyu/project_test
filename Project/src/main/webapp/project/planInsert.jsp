<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Plan</title>
<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script> <!-- 구글맵 스트립트 -->
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script> <!-- JQuery -->
<link rel="stylesheet" type="text/css" href="css/MyPlan.css" />
<link href="https://fonts.googleapis.com/css2?family=DynaPuff:wght@700&display=swap" rel="stylesheet"> <!-- 폰트 -->
<link href="https://fonts.googleapis.com/css2?family=DynaPuff:wght@700&family=Gowun+Dodum&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/e14a2b80fa.js" crossorigin="anonymous"></script> <!-- 폰트어썸 아이콘 -->
<!-- daterangepicker -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
</head>
<body>
<form action="cityPlan.do?cmd=updateProc" method="post" name="updateForm"> <!-- 정보를 보내기 위해 form 생성 -->
	<div id="mapWrap">
		<div id="hello">Let's &nbsp;make &nbsp;a &nbsp;plan</div>
		<input id="input" type="text" name="userSearch" placeholder="도시를 입력해주세요. 엔터x"> <!-- 검색창 -->
		<button id="searchBtn"><i class="fa-solid fa-magnifying-glass"></i></button> <!-- 검색창 버튼 -->
		<div id="plan"> <!-- 일정 div -->
			<div id="plan_cities">
				<c:forEach var="arry" items="${arry}" varStatus="status">
				<div class="planInsert_size">
					<input type="hidden" name="idCheck" value="${idCheck}"> 
					<input type="hidden" name="bfcityEn${arry.count}" value="${arry.getSave_city_eng()}">
					<input type="hidden" name="bfcityKr${arry.count}" value="${arry.getSave_city_eng()}">
					<!-- 이전에 저장되었던 정보들을 updateProc.jsp에 보내기위해 hidden을 사용함 -->
					<div id="borderWrap">
						<div class="border1"></div> <!-- 추가된 공간에 border를 이용해서 꾸미기 위해 만든 div -->
						<div id="border2"></div>
						<div class="border1"></div>
					</div>
					<div id="planInsert"> <!-- 이 나라들이 부분에 추가됨 -->
						<input type="text" class="demoBefore${arry.count}" name="bfsche${arry.count}"/> <!-- daterangepicker 불러오기 위한 input -->
						<script type="text/javascript">
							$(function () { /* daterangepicker 초기설정 */
    							$('input[name=bfsche${arry.index+1}]').daterangepicker({
        							"locale": {
            							"format": "YYYY-MM-DD",
            							"separator": " ~ ",
            							"applyLabel": "확인",
            							"cancelLabel": "취소",
            							"fromLabel": "From",
            							"toLabel": "To",
            							"customRangeLabel": "Custom",
            							"weekLabel": "W",
            							"daysOfWeek": ["일", "월", "화", "수", "목", "금", "토"],
            							"monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
            							"firstDay": 1
       								},
        							"startDate": "${arry.getSave_schedule()}",
        							<%-- "endDate": "<%= %>", --%>
        							"drops": "down"
    							}, function (start, end, label) {
        							console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
    								});
							});
						</script>
						<div>${arry.getSave_city_eng()}</div>
						<div class="insertPlanInfo">${arry.getSave_city_kor()}</div>
						<div class="listClose" onclick="deleteList(this)">삭제</div>
					</div>
				</div>
					</c:forEach>
			</div>
		</div>
		<!-- google map div -->
		<input id="savePlan" type="submit" value="저장하기">
	</div>
</form>
    	<div id="map" onload="initMap()"></div>
<script type="text/javascript" src="js/MyPlan.js"></script>
<!-- google map key, 맵 구현 -->
<script type="text/javascript">
	<c:forEach var="arry2" items="${arry2}">
		var ${arry2.getCityname()} = "${arry2.getCityname()}";
	</c:forEach>
	
function initMap() {
	
 	var map = new google.maps.Map(document.getElementById("map"), { /* 맵 열기 */
  	 	mapId: "4d7ece8ee77fe4c0", /* 커스텀 맵 id (내가 지정한대로) */
    	center: { lat: 48.85, lng: 2.35 },
    	zoom: 6, /* 실행되었을때 확대 정도 */
		panControl: false, /* 기본 설정들 off */
  		zoomControl: false,
  		mapTypeControl: false,
 		scaleControl: false,
 		streetViewControl: false,
 		overviewMapControl: false
 	});
	
  	const icons = { /* 커스텀 아이콘 설정 */
   		info: {
      		icon: "img/dot.png",
    	},
    };
	
  	var features = [ /* marker에 대한 정보들 설정 */
	<c:forEach var="arry2" items="${arry2}">
 						{
  	      					position: new google.maps.LatLng(${arry2.getLatitude()}, ${arry2.getLongitude()}), /* 마커 위치 */
  	      					type: "info", /* 마커 아이콘 */
   	      					place: '<div class="placeInfo"><div class="insertPlan" onclick="sendValue(${arry2.getCityname()})" class="${arry2.getCityname()}">+</div><div class="placeInfo_img"><img src="./img/${arry2.getCityname()}.jpg"></div><div class="placeInfo_info"><b>${arry2.getCityinfo()}</b></div><div class="guideBook" onclick="infoGo(${arry2.getCityname()})"><b>가이드북 📘</b></div></div>'
  	    				},  /* 마커를 눌렀을 때 나오는 창 -> html 태그 이용해서 틀 만들기 */
	</c:forEach>
    ];
  	
  	var infowindow = new google.maps.InfoWindow(); /* 마커 눌렀을 때 나오는 창 */
  	var infoclose = true; /* 마커 눌렀을 때 나오는 창 닫기 위해 만든 boolean*/
	// Create markers.
    for (let i = 0; i < features.length; i++) {
    	const marker = new google.maps.Marker({
     		position: features[i].position,
      		icon: icons[features[i].type].icon,
     		map: map,
    	});
    	
    	google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
                //html로 표시될 인포 윈도우의 내용
                infowindow.setContent(features[i].place);
                //인포윈도우가 표시될 위치
                if(infoclose) {
                	infowindow.open(map, marker);
                	infoclose = false; /* 열렸으면 다음번에 닫기 위해 false로 바꿈 */
                } else {
                	infowindow.close();
                	infoclose = true;
                }
                
            }
            features[i].place.classList.add('placeinfo'); /* css 적용시키기 위해 class 추가 */
            
        })(marker, i)); /* 얜 모름; */
        
  	}
  	/* ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ 검색기능 코드 ㅡㅡㅡㅡㅡㅡㅡㅡ*/
  	autocomplete = new google.maps.places.Autocomplete(document.getElementById("input"),{
 
  		fields: ['geometry','name'],
  		type: ['establishment']
  	});
  	autocomplete.addListener("place_changed", () => {
  		const place = autocomplete.getPlace();
  		var map = new google.maps.Map(document.getElementById("map"), { /* 맵 열기 */
  	  	 	mapId: "4d7ece8ee77fe4c0", /* 커스텀 맵 id (내가 지정한대로) */
  	    	center: place.geometry.location,
  	    	zoom: 6, /* 실행되었을때 확대 정도 */
  			panControl: false, /* 기본 설정들 off */
  	  		zoomControl: false,
  	  		mapTypeControl: false,
  	 		scaleControl: false,
  	 		streetViewControl: false,
  	 		overviewMapControl: false
  	 	});
  		const icons = { /* 커스텀 아이콘 설정 */
  		   		info: {
  		      		icon: "img/dot.png",
  		    	},
  		    };
  			
  		var features = [ /* marker에 대한 정보들 설정 */
  			<c:forEach var="arry2" items="${arry2}">
  		 						{
  		 							position: new google.maps.LatLng(${arry2.getLatitude()}, ${arry2.getLongitude()}), /* 마커 위치 */
  		  	      					type: "info", /* 마커 아이콘 */
  		   	      					place: '<div class="placeInfo"><div class="insertPlan" onclick="sendValue(${arry2.getCityname()})" class="${arry2.getCityname()}">+</div><div class="placeInfo_img"><img src="./img/${arry2.getCityname()}.jpg"></div><div class="placeInfo_info"><b>${arry2.getCityinfo()}</b></div><div class="guideBook" onclick="infoGo(${arry2.getCityname()})"><b>가이드북 📘</b></div></div>'
  		  	    				},  /* 마커를 눌렀을 때 나오는 창 -> html 태그 이용해서 틀 만들기 */
  			</c:forEach>
  		    ];
  		  	
  		  	var infowindow = new google.maps.InfoWindow(); /* 마커 눌렀을 때 나오는 창 */
  		  	var infoclose = true; /* 마커 눌렀을 때 나오는 창 닫기 위해 만든 boolean*/
  			// Create markers.
  		    for (let i = 0; i < features.length; i++) {
  		    	const marker = new google.maps.Marker({
  		     		position: features[i].position,
  		      		icon: icons[features[i].type].icon,
  		     		map: map,
  		    	});
  		    	
  		    	google.maps.event.addListener(marker, 'click', (function(marker, i) {
  		            return function() {
  		                //html로 표시될 인포 윈도우의 내용
  		                infowindow.setContent(features[i].place);
  		                //인포윈도우가 표시될 위치
  		                if(infoclose) {
  		                	infowindow.open(map, marker);
  		                	infoclose = false; /* 열렸으면 다음번에 닫기 위해 false로 바꿈 */
  		                } else {
  		                	infowindow.close();
  		                	infoclose = true;
  		                }
  		                
  		            }
  		            features[i].place.classList.add('placeinfo'); /* css 적용시키기 위해 class 추가 */
  		            
  		        })(marker, i)); /* 얜 모름; */
  		        
  		  	}
  	});
}
</script>
<script type="text/javascript">
	var count = 1;	
	var sendValue = function(name) {
	<c:forEach var="arry2" items="${arry2}">
		if(name === '${arry2.getCityname()}'){
			document.getElementById("plan_cities").innerHTML += "<div class='planInsert_size'><input type='hidden' name='count' value='"+count+"'><input type='hidden' name='cityEn"+count+"' value='${arry2.getCityname()}'><input type='hidden' name='cityKr"+count+"' value='${arry2.getCityinfo()}'><div id='borderWrap'><div class='border1'></div><div id='border2'></div><div class='border1'></div></div><div id='planInsert'><input type='text' class='demo' name='sche"+count+"'/><div>${arry2.getCityname()}</div><div class='insertPlanInfo'>${arry2.getCityinfo()}</div><div class='listClose' onclick='deleteList(this)'>삭제</div></div></div>";			
			count++;
		}
	</c:forEach>
		$(function check() {
	    	$(".demo").daterangepicker({
	     	   "locale": {
	    	        "format": "YYYY-MM-DD",
	    	        "separator": " ~ ",
	    	        "applyLabel": "확인",
	    	        "cancelLabel": "취소",
	    	        "fromLabel": "From",
	    	        "toLabel": "To",
	     	       	"customRangeLabel": "Custom",
	    	        "weekLabel": "W",
	         	    "daysOfWeek": ["일", "월", "화", "수", "목", "금", "토"],
	    	        "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
	            	"firstDay": 1
	        	},
	        	"drops": "right"
	    	}, function (start, end, label) {
	        	console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
	    	});
		});
	}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCY1oDgXTf55jiJBGLsiTsCgf9DyrlU66E&libraries=places&callback=initMap&v=weekly" defer></script>
</body>
</html>