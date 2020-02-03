			
		function delete_function(){
			passinput()
		}
			function passinput(){
				var delete_form = document.delete_form;
				var pass = delete_form.pass.value;  //var pass=document.getElementById('pass');와 같은문장임
				if (pass==""){
					alert('비밀번호를 입력하세요');
					}
				else{	
					passwordcheck()
					}
			}
		
			
			function passwordcheck(){
				var password=delete_form.pass.value;
				var hidden=delete_form.hidden.value;
				if(hidden!=password){
					alert('비밀번호가 올바르지 않습니다');
				}
				else{
				var a=confirm("정말삭제하시겠습니까?");
				if(a==true){
				delete_form.submit()
				}
				else{}
				}
			}