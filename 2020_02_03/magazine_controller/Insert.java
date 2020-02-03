package magazine_controller;

import java.util.ArrayList;
import java.util.Enumeration;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import Dto.Dto;
import model1.action;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Insert implements cominterface{

	static Insert impl = new Insert();
	public static Insert instance() {
		
		return impl;

	}
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		LocalDateTime current = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
        String formatted = current.format(formatter);
		Dto aa=new Dto();
		
		System.out.println("insert");
		String writename="";
		String moviename="";
		String title="";
		String contents="";
		String uploadPath=request.getRealPath("/upload");
		String day=formatted;
		
		int size = 10*1024*1024;
		String filename="";
		String origfilename="";
		try{

			MultipartRequest multi=new MultipartRequest(request,uploadPath,size, "UTF-8",new DefaultFileRenamePolicy());
			writename=multi.getParameter("writename");
			moviename=multi.getParameter("moviename");
			title=multi.getParameter("title");
			contents=multi.getParameter("contents");		
			
			Enumeration files=multi.getFileNames();
			
			String file =(String)files.nextElement();
			filename=multi.getFilesystemName(file);//파일명이 겹칠떄 뒤에 번호붙여주는애
			origfilename= multi.getOriginalFileName(file);//만약에 파일명이겹치면 a8 a9이렇게 저장이되는데 작성자가 자기는 a로 올렸는데 a8번이네? 라고 오해할수있기때문에 작성자에게 보여줄때는 원본이름으로 보여주려고

			
		}catch(Exception e){
			e.printStackTrace();
		}
		if(filename==null) {
		filename="nosazin.png";	
		}
		aa.setWritename(writename);
		aa.setMoviename(moviename);
		aa.setTitle(title);
		aa.setFilename(filename);
		aa.setContents(contents);
		aa.setDay(day);
		
		System.out.println(filename);
		
		
		
		action model = action.instance();
		model.insert(aa);
		return "sss.vo?command=all";
	}

}

