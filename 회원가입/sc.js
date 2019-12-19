
function password_limit(){
	var idcheck=joinform.idinput.value
	var idchecklength=joinform.idinput.value.length
	var passwordcheck=joinform.pass.value
	var passwordchecklength=joinform.pass.value.length
	var repasswordcheck=joinform.repassword.value
	var passhint=joinform.hint.options[0].selected/*이건 트루나 펄스값으로 나옴 option 0이 select로 되있어?
	기본은 0번째 부터이기때문에 가만히 두어도 0번째는 트루임*/
	var passwordfinding=joinform.hintanswer.value
	var namecheck=joinform.name.value
	var adrcheck1=joinform.adr1.value
	var adrcheck2=joinform.adr2.value
	var gendercheck=joinform.gender.value
	var emailcheck=joinform.email.value
	var mailcheck=joinform.mail.options[0].selected
	var birthycheck=joinform.birthy.options[0].selected
	var birthmcheck=joinform.birthm.options[0].selected
	var birthdcheck=joinform.birthd.options[0].selected
	var phonecheck1=joinform.phone1.options[0].selected
	var phonecheck2=joinform.phone2.value
	var phonecheck3=joinform.phone3.value

	var languagecheck_result=''
	var lastpasshint=''
	var lastmail=''
	var lastbirthy=''
	var lastbirthm=''
	var lastbirthd=''
	var lastphone=''

	if(idcheck=='')
	{
	alert("아이디를 입력하지 않으셨습니다.")
	joinform.idinput.focus()
	}
	else if(idcheck!='')
	{
		if(idchecklength>8||idchecklength<4)
			{
				alert("4~8자의 아이디를 입력하세요.")
				joinform.pass.focus()
			}
		else if(idchecklength<=8&&idchecklength>=4)
		{
			if(passwordcheck=='')
			{
				alert("비밀번호를 입력하지 않으셨습니다.")
				joinform.pass.focus()
			}
			else if(passwordcheck!='')
			{
				if(passwordchecklength>8||passwordchecklength<4)
				{
					alert("4~8자의 비밀번호를 입력하세요.")
					joinform.pass.focus()
				}
				else if(passwordchecklength<=8&&passwordchecklength>=4)
				{
					if(repasswordcheck=='')
					{
						alert("비밀번호를 재확인창을 입력하여주세요.")
						joinform.repassword.focus()
					}
					else if(repasswordcheck!='')
					{
						if(repasswordcheck!=passwordcheck)
							{
								alert("비밀번호가 맞지않습니다.")
								joinform.repassword.focus()
							}
						else if(repasswordcheck==passwordcheck)
							{
								if(passhint)
								{
									alert("비번찾기 질문을 선택하지 않으셨습니다.")
								}
								else if(!passhint)
								{

									if(passwordfinding=='')
									{
										alert("비밀번호 찾기답을 입력하세요.")
										joinform.repassword.focus()
									}
									else if(passwordfinding!='')
									{
										if(namecheck=='')
										{
											alert("이름을 입력하세요.")
											joinform.repassword.focus()
										}
										else if(namecheck!='')
										{
											if(adrcheck1=='')
											{
												alert("첫째주소칸이 비어있습니다 입력하세요.")
												joinform.adr1.focus()
											}
											else if(adrcheck1!='')
											{
											  if(adrcheck2=='')
											  {
												alert("둘째주소칸이 비어있습니다 입력하세요.")
												joinform.adr2.focus()
											  }
											  else if(adrcheck2!='')
											  {
												if(emailcheck=='')
												{
													alert("이메일을 입력하세요.")
													joinform.email.focus()
												}
												else if(emailcheck!='')
												{
													if(mailcheck)
													{
														alert("메일뒷부분을 골라주세요")
													}
													else if(!mailcheck)
													{
														if(birthycheck)
														{
															alert("년도를 선택해 주세요")
														}
														else if(!birthycheck)
														{
															if(birthmcheck)
															{
																alert("월을 선택해 주세요")
															}
															else if(!birthmcheck)
															{
																if(birthdcheck)
																{
																	alert("일을 선택해 주세요")
																}
																else if(!birthdcheck)
																{
																	if(phonecheck1)
																	{
																		alert("휴대폰번호 앞자리를 선택해 주세요 ")
																	}
																	else if(!phonecheck1)
																	{
																		if(phonecheck2=='')
																		{
																			alert("휴대폰번호 중간자리를 입력해 주세요 ")
																		}
																		else if(phonecheck2!='')
																		{
																			if(phonecheck3=='')
																			{
																				alert("휴대폰번호 끝자리를 입력해 주세요 ")
																			}
																			else if(phonecheck3!='')
																			{
																				if(joinform.uselang1.checked)
																				{
																					languagecheck_result+=" "+joinform.uselang1.value
																				}
																				if(joinform.uselang2.checked)
																				{
																					languagecheck_result+=" "+joinform.uselang2.value
																				}
																				if(joinform.uselang3.checked)
																				{
																					languagecheck_result+=" "+joinform.uselang3.value
																				}
																				if(joinform.uselang4.checked)
																				{
																					languagecheck_result+=" "+joinform.uselang4.value
																					
																				}

																				for(var i=0;i<joinform.hint.length;i++)
																				{
																				if(joinform.hint.options[i].selected)
																				lastpasshint=joinform.hint.value
																				}

																				for(var i=0;i<joinform.mail.length;i++)
																				{
																				if(joinform.mail.options[i].selected)
																				lastmail=joinform.mail.value
																				}
																				
																				for(var i=0;i<joinform.birthy.length;i++)
																				{
																				if(joinform.birthy.options[i].selected)
																				lastbirthy=joinform.birthy.value
																				}
																				for(var i=0;i<joinform.birthm.length;i++)
																				{
																				if(joinform.birthm.options[i].selected)
																				lastbirthm=joinform.birthm.value
																				}
																				for(var i=0;i<joinform.birthd.length;i++)
																				{
																				if(joinform.birthd.options[i].selected)
																				lastbirthd=joinform.birthd.value
																				}
																				for(var i=0;i<joinform.phone1.length;i++)
																				{
																				if(joinform.phone1.options[i].selected)
																				lastphone=joinform.phone1.value
																				}

alert("아이디="+idcheck+"\n"+"비밀번호="+passwordcheck+"\n"+
"비번힌트찾기 질문="+lastpasshint+"\n"+"비밀번호찾기답="+passwordfinding+"\n"+"이름="+namecheck+"\n"+"주소="+adrcheck1+"\n"+adrcheck2+
"성별="+gendercheck+"\n"+"이메일주소="+emailcheck+"@"+lastmail+"\n"+
"출생년도="+lastbirthy+"년"+lastbirthm+"월"+lastbirthd+"일"+"핸드폰번호="+lastphone+"-"+phonecheck2+"-"+phonecheck3+"\n"+
"사용가능언어="+languagecheck_result
)


																			}


																			}
																		}
																	}
																}
															}
														}
													}
												}
											  }
											}
										}
									}
								}
							}
						}
					}
				}
			}				
		}
