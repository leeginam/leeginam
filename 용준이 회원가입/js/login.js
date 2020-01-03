	function signup(){
			var signupform = document.signupform;
			var id = signupform.id.value
			var email = signupform.pw.value
			var idReg = /^[A-za-z0-9]{4,16}$/g;
			var passReg = /^[A-Za-z0-9+]*$/;
			if(idReg.test(id)){	

				if (passReg.test(email)){

						signupform.submit()
						

				}
				else{
					alert("비밀번호를 입력하세요")
						
					}

			}
			else{
				alert("아이디는 4자이상 16자이하로 입력가능합니다 한글은 입력할수 없습니다.")
		
				}
		}

