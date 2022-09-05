<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="css/index.css">
<title>DOZO</title>
</head>
<body>
    <div class="container" >
        <div class="header">
            <h1><a href="#">LOGO</a></h1>
            <div class="nav">
                <ul>
                    <li><a href="#">Login</a></li>
                    <li><a href="#">Join</a></li>
                </ul>
            </div>
        </div>
       
        <div class="rectangle">
            <div class="minibox"></div>
            <div class="small1"><div class="small1-1"><a >시작</a></div></div>
            <div class="small2"><div class="small2-1"><a onclick="ViewLayer();">해인</a></div></div>
            <div class="small3"><div class="small3-1"><a onclick="ViewLayer();">승환</a></div></div>
            <div class="small4"><div class="small4-1"><a onclick="ViewLayer();">재연</a></div></div>
            <div class="small5"><div class="small5-1"><a onclick="ViewLayer();">찬규</a></div></div>
            <div class="small6" ><div class="small6-1">아시아</div></div>
            <div class="small7" ><div class="small7-1"><a onclick="ViewLayer();">한국</a></div></div>
            <div class="small8" ><div class="small8-1"><a onclick="ViewLayer();">일본</a></div></div>
            <div class="small9" ><div class="small9-1"><a onclick="ViewLayer();">중국</a></div></div>
            <div class="small10" ><div class="small10-1"><a onclick="ViewLayer();">대만</a></div></div>
            <div class="small11"><div class="small11-1">유럽</div></div>
            <div class="small12" ><div class="small12-1">미대륙</div></div>
            <div class="small13" ><div class="small13-1"><a onclick="ViewLayer();">스페인</a></div></div>
            <div class="small14" ><div class="small14-1"><a onclick="ViewLayer();">독일</a></div></div>
            <div class="small15" ><div class="small15-1"><a onclick="ViewLayer();">프랑스</a></div></div>
            <div class="small16" ><div class="small16-1"><a onclick="ViewLayer();">영국</a></div></div>
            <div class="small17" ><div class="small17-1"><a onclick="ViewLayer();">괌</a></div></div>
            <div class="small18" ><div class="small18-1"><a onclick="ViewLayer();">캐나다</a></div></div>
            <div class="small19" ><div class="small19-1"><a onclick="ViewLayer();">LA</a></div></div>
            <div class="small20" ><div class="small20-1"><a onclick="ViewLayer();">뉴욕</a></div></div>
        </div>
    </div>
        
       
        <div>
        <div class="photo" class="korea" id="korea"  >
            <img src="images/한국.jpg" alt="korea" width="700px" height="420px">
            </div>
         <div class="photo" class="japan" id="japan" >
            <img src="images/일본.jpg" alt="japan" width="700px" height="420px">
            </div>
        <div class="photo" class="china" id="china" >
            <img src="images/중국.jpg" alt="china" width="700px" height="420px">
            </div>
        <div class="photo" class="taiwan" id="taiwan"  >
            <img src="images/대만.jpg" alt="taiwan" width="700px" height="420px">
            </div>
        <div class="photo" class="england" id="england"  >
            <img src="images/영국.jpg" alt="england" width="700px" height="420px">
            </div>
        <div class="photo" class="france" id="france">
            <img src="images/프랑스.jpg" alt="france" width="700px" height="420px">
            </div>
        <div class="photo" class="germany" id="germany">
            <img src="images/독일.jpg" alt="germany" width="700px" height="420px">
            </div>
        <div class="photo" class="spain" id="spain">
            <img src="images/스페인.jpg" alt="spain" width="700px" height="420px">
            </div>
        <div class="photo" class="la" id="lacity">
            <img src="images/la.jpg" alt="lacity" width="700px" height="420px">
            </div>
        <div class="photo" class="newyork" id="newyork">
            <img src="images/뉴욕.jpg" alt="newyork" width="700px" height="420px"> 
            </div>
        <div class="photo" class="canada" id="canada">
            <img src="images/캐나다.jpg" alt="canada" width="700px" height="420px">
            </div>
        <div class="photo" class="guam" id="guam">
            <img src="images/괌.jpg" alt="guam" width="700px" height="420px">
            </div>
        </div>    
        
        <script>
            
            function viewLayer() {
                var country = document.getElementsByClassName('photo');
                
                for (var i =0; i<country.length;i++) {

                document.getElementsByClassName('.photo')=photo[i];   
             
            } 

           
            }


            // function ViewLayer5(){
            //     if(document.getElementById("korea").style.display=="none"){
            // document.getElementById("korea").style.display='inline'
            //      }else{
            // document.getElementById("korea").style.display='none'}
            // }
            // function ViewLayer6(){
            //    if(document.getElementById("japan").style.display=="none"){
            //    document.getElementById("japan").style.display='inline'
            //         }else{
            //      document.getElementById("japan").style.display='none'}
            // }
            // function ViewLayer7(){
            //    if(document.getElementById("china").style.display=="none"){
            //    document.getElementById("china").style.display='inline'
            //         }else{
            //      document.getElementById("china").style.display='none'}
            // }
            // function ViewLayer8(){
            //    if(document.getElementById("taiwan").style.display=="none"){
            //    document.getElementById("taiwan").style.display='inline'
            //         }else{
            //      document.getElementById("taiwan").style.display='none'}
            // }
            // function ViewLayer9(){
            //    if(document.getElementById("spain").style.display=="none"){
            //    document.getElementById("spain").style.display='inline'
            //         }else{
            //      document.getElementById("spain").style.display='none'}
            // }
            // function ViewLayer10(){
            //    if(document.getElementById("germany").style.display=="none"){
            //    document.getElementById("germany").style.display='inline'
            //         }else{
            //      document.getElementById("germany").style.display='none'}
            // }
            // function ViewLayer11(){
            //    if(document.getElementById("france").style.display=="none"){
            //    document.getElementById("france").style.display='inline'
            //         }else{
            //      document.getElementById("france").style.display='none'}
            // }
            // function ViewLayer12(){
            //    if(document.getElementById("england").style.display=="none"){
            //    document.getElementById("england").style.display='inline'
            //         }else{
            //      document.getElementById("england").style.display='none'}
            // }
            // function ViewLayer13(){
            //    if(document.getElementById("guam").style.display=="none"){
            //    document.getElementById("guam").style.display='inline'
            //         }else{
            //      document.getElementById("guam").style.display='none'}
            // }
            // function ViewLayer14(){
            //    if(document.getElementById("canada").style.display=="none"){
            //    document.getElementById("canada").style.display='inline'
            //         }else{
            //      document.getElementById("canada").style.display='none'}
            // }
            // function ViewLayer15(){
            //    if(document.getElementById("lacity").style.display=="none"){
            //    document.getElementById("lacity").style.display='inline'
            //         }else{
            //      document.getElementById("lacity").style.display='none'}
            // }
            // function ViewLayer16(){
            //    if(document.getElementById("newyork").style.display=="none"){
            //    document.getElementById("newyork").style.display='inline'
            //         }else{
            //      document.getElementById("newyork").style.display='none'}
            // }

        </script> 
</body>
</html>