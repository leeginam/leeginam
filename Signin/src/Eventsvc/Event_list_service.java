package Eventsvc;

import static Eventdb.javautil.close;
import static Eventdb.javautil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import Dao.Eventdao;
import Dto.Event_list_dto;
import Dto.Event_list_pagination_vo;;

public class Event_list_service {
	
public ArrayList<Event_list_dto> getArticleList(String lastnum) throws Exception{
		
		ArrayList<Event_list_dto> articleList = null;
		Connection con = getConnection();
		Eventdao eventdao = Eventdao.getInstance();
		eventdao.setConnection(con);
		if(lastnum.equals("0")) {
			articleList = eventdao.eventlist();
			}
		else {
			articleList = eventdao.eventlistmore(lastnum);
			}
		close(con);
		return articleList;
		
	}
	public ArrayList<Event_list_dto> getArticle(String eventnum) throws Exception{
		
		ArrayList<Event_list_dto> articleList = null;
		Connection con = getConnection();
		Eventdao eventdao = Eventdao.getInstance();
		eventdao.setConnection(con);
	
		articleList = eventdao.eventarticle(eventnum);

	
			
		close(con);
		return articleList;
		
	}
public ArrayList<Event_list_pagination_vo> pagination() throws Exception{
	
		ArrayList<Event_list_pagination_vo> articleList = null;
		Connection con = getConnection();
		Eventdao eventdao = Eventdao.getInstance();
		eventdao.setConnection(con);
		articleList = eventdao.pagination();
		close(con);
		return articleList;
		
	}

}
