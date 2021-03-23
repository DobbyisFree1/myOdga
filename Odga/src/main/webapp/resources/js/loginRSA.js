$("#ms_login").click(function(){
	//사용자 계정정보 암호화전 평문
	var uemail = $("#l_email").val();
	var pwd = $("#l_pwd").val();
	
	alert(uemail +"##"+ pwd);
	//RSA 암호화 생성
	var rsa = new RSAKey();
	rsa.RSASetPublic($("#OASISKeyModulus").val(), $("#OASISKeyExponent").val());
	
	//사용자 계정정보를 암호화 처리
	uid = rsa.RSAEncrypt(uemail);
	pwd = rsa.RSAEncrypt(pwd); 
	alert(uid +"##"+ pwd);
	$.ajax({ 
		  type: "POST",  
		  url: "login.proc",  
		  data: {m_email :uemail, m_pwd: pwd},  //사용자 암호화된 계정정보를 서버로 전송
		  dataType:"json",
		  success: function(msg){    
			 
			  if(msg.state == "true")
			  {
				  location.href = "./"; 
			  }
			  else if(msg.state == "false")
			  {
				 alert("로그인에 실패하였습니다. <br> 아이디 패스워드를 확인하여주세요.");
			  }
			  else
			  {
				 alert("잘못된 경로로 접근하였습니다. <br>암호화 인증에 실패하였습니다."); 
			  } 
		  } 
	});
});