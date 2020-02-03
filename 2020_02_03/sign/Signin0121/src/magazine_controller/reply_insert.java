package magazine_controller;


import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.type.IntegerTypeHandler;

import Dto.reply_dto;
import model1.action;


public class reply_insert implements cominterface{

	static reply_insert impl = new reply_insert();
	public static reply_insert instance() {
		
		return impl;

	}

	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		reply_dto dto=new reply_dto();
		LocalDateTime current = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
        String day = current.format(formatter);
		
		
		String comment = new String(request.getParameter("comment").getBytes("8859_1"),"UTF-8");
		String num =request.getParameter("numnum");
		String replywritename = new String(request.getParameter("replywritename").getBytes("8859_1"),"UTF-8");
		int number=Integer.parseInt(num);

		dto.setComment(comment);
		dto.setOriginnum(number);
		dto.setReplywritename(replywritename);
		dto.setDay(day);

		action model = action.instance();
		model.reply_insert(dto);
		return "reply_select.vo?command=reply_select&num="+num;
	}

}

