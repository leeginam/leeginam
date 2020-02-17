function delete_function(){

	id();
}
	function id(){
	var id=delete_form.input_id.value
		if(id==''){
		alert("아이디를 입력하세요")
		}
		else{
		password();
		}	
	}
	function password(){
	var password=delete_form.input_password.value
		if(password==''){
		alert("비밀번호를 입력해주세요");
		}
		else{
		repassword();
		}
	}
	function repassword()
		{
			var repassword=delete_form.input_repassword.value
			 if(repassword==''){
				 alert("비밀번호 확인창을 확인해주세요.")
				 }
			else{
				password_check();	
				}	
		}
	function password_check()
		{
		var password=delete_form.input_password.value
		var repassword=delete_form.input_repassword.value
			if(password!=repassword){
				alert("비밀번호가 일치하지 않습니다.");
			}
			else{
				if(confirm("정말삭제하시겠습니까?")==true){
				var update=document.delete_form	
				update.submit();
				}
				else{
				alert("삭제하기를 취소하셨습니다.");
				location.href="I_signout.jsp";
				}
			}
		}

