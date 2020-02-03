			
		function changeup(){
		
		

			pwsizecheck()
						

			

			}
			function pwsizecheck(){
				var pwsize = signupform.pwinput1.value.length
				if ((pwsize>=4) && (pwsize<=16)){
					pwcheck()
					}
				else{
					alert("비번사이즈불합격")
						
					}
			}
			function pwcheck(){
				var pwval1 = signupform.pwinput1.value
				var pwval2 = signupform.pwinput2.value

				if(pwval1==pwval2){
					 namecheck()
					}
					else{
						alert("비번확인불합격")
				
						}
			}
			
			function namecheck(){
				var name = signupform.name.value
				if(name!=""){
					adrcheck()
				}
					else{
						alert("이름을 입력하세요")
						
						}
			}
			function adrcheck(){
				var adrnum = signupform.adr.value
				var adr1 = signupform.adr1.value
				var adr2 = signupform.adr2.value
				if (adrnum!="" && adr1 !="" && adr2 !=""){
					phonecheck()
				}
				else{
					alert("주소란을 전부 입력하세요")
				
					}								
			
			}
			function phonecheck(){
					var signupform = document.signupform;
					var phone1 =  signupform.phone1
					var phone2 =  signupform.phone2.value
					var phone3 =  signupform.phone3.value
					var phone2size =  signupform.phone2.value.length
					var phone3size =  signupform.phone3.value.length
					var idReg = /^[A-za-z0-9]{4,16}$/g;
					var numreg = /^[0-9]*/;
				if (phone2!="" && phone3!=""&& phone2size>=3 && phone3size==4)
					{
						
							signupform.submit()		
						
					}
					else{
						alert("전화번호를 제대로 입력하세요")
							
					}
							
				}
