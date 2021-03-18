<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8"/>
		<title>Ajax Test01</title>
		<script type="text/javascript" language="javascript" 
		     src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
		<script type="text/javascript">
		   /*
		   $(document).ready(function(){
		   });*/
		   
	 $(function(){    
		$("#searchOk01").on("click", function(){
        $.ajax({        
              url: "../ajax01/search01.do",
              type: 'POST',
              data : {"contentId" : contentid, "contentTypeId" : contenttypeid},            //contentid, contentTypeid 서버로 전송
              dataType: 'json',
              success: function(responseData){
		      //var jsObj = JSON.parse(responseData); //jQuery 버젼을 올려서 필요 없음
              if(!responseData){
			  //alert("존재하지 않는 name 임");
				return false;
			  }   
              var myItem = responseData.response.body.items.item;   //이 경로 내부에 데이터가 들어있음
              var html = '';
              html += '<h4>'+myItem.treatmenu+'</h4>';        //API 활용 메뉴얼 보면 Response 할 수 있는
              html += '<h4>'+myItem.opentimefood+'</h4>';    //데이터들이 있음
              html += '<h4>'+myItem.reservationfood+'</h4>';  //거기서 골라 쓰면 됨.
                      
              $('#window').html(output);
              },
              error: function(XMLHttpRequest, textStatus, errorThrown) { 
              alert("Status: " + textStatus); alert("Error: " + errorThrown); 
            } 
    });
    });
    } 
	 </script>
		</head>
		<body>
		
		<input type="text" name="contentId" id="contentId"/>
	    <input type="button" value="검색" id="searchOk01"/>
	    <br/>
	    
        <br/><br/>
		<div id="container"></div>
		<br/><br/>
		
		<a href="../">인덱스</a><br/><br/>
		</center>
	</body>
</html>