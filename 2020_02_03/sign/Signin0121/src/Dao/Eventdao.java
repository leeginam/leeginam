package Dao;

import static Eventdb.javautil.close;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

import Dto.Event_list_dto;



public class Eventdao {
	DataSource ds;
	Connection con;
	private static Eventdao EventDao;

	private Eventdao() {
	}

	public static Eventdao getInstance(){  //싱글톤 객체생성
		if(EventDao == null){
			EventDao = new Eventdao();
		}
		return EventDao;
	}

	public void setConnection(Connection con){  //디비 연결
		this.con = con;
	}
	
	public ArrayList<Event_list_dto> eventlist(){
			ArrayList<Event_list_dto> articlelist = new ArrayList<Event_list_dto>();
			Event_list_dto data = null;
			
			Statement stmt = null;
			ResultSet rs = null;
			String sql="select * from event;";

			try{
				stmt = con.createStatement();
				
				rs = stmt.executeQuery(sql);
				
				while(rs.next()){
					data = new Event_list_dto();
					data.setTitle(rs.getString("title"));
					data.setEventstart(rs.getDate("eventstart").toString());
					data.setEventfinal(rs.getDate("eventfinish").toString());
					articlelist.add(data);
				}

			}catch(Exception ex){
			}finally{
				close(rs);
				close(stmt);
			}
		
		
		return articlelist;
		
	}
		
}
