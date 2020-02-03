package Eventsvc;

import static Eventdb.javautil.close;
import static Eventdb.javautil.getConnection;
import java.sql.Connection;
import java.util.ArrayList;

import Dao.Eventdao;
import Dto.Event_list_dto;;

public class Event_list_service {
	
public ArrayList<Event_list_dto> getArticleList() throws Exception{
		ArrayList<Event_list_dto> articleList = null;
		Connection con = getConnection();
		Eventdao eventdao = Eventdao.getInstance(); //쿼리문있는 dao 객체생성
		eventdao.setConnection(con);
		articleList = eventdao.eventlist();
		close(con);
		return articleList;
	}
}
