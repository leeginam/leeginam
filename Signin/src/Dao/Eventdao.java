package Dao;

import static Eventdb.javautil.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

import com.mysql.jdbc.ResultSetMetaData;

import Dto.Event_list_dto;
import Dto.Event_list_pagination_vo;



public class Eventdao {
	DataSource ds;
	Connection con;
	private static Eventdao EventDao;

	private Eventdao() {
		// TODO Auto-generated constructor stub
	}

	public static Eventdao getInstance(){
		if(EventDao == null){ 
			EventDao = new Eventdao();
		}
		return EventDao; 
	}

	public void setConnection(Connection con){
		this.con = con;
	}
	
	public ArrayList<Event_list_dto> eventlist(){
			ArrayList<Event_list_dto> articlelist = new ArrayList<Event_list_dto>();
			Event_list_dto data = null;
			
			Statement stmt = null;
			ResultSet rs = null;
			String sql="select * from event order by eventnum asc limit 8;";

			try{
				stmt = con.createStatement();
				
				rs = stmt.executeQuery(sql);

				while(rs.next()){
					data = new Event_list_dto();
					data.setTitle(rs.getString("title"));
					data.setEventstart(rs.getDate("eventstart").toString());
					data.setEventfinal(rs.getDate("eventfinish").toString());
					data.setEventnum(rs.getInt("eventnum"));
					articlelist.add(data);
				}

			}catch(Exception ex){
			}finally{
				close(rs);
				close(stmt);
			}
		
		
		return articlelist;
		
	}
	public ArrayList<Event_list_dto> eventlistmore(String lastnum){
		ArrayList<Event_list_dto> articlelist = new ArrayList<Event_list_dto>();
		Event_list_dto data = null;
		
		Statement stmt = null;
		ResultSet rs = null;
		String sql="select * from event where eventnum>"+lastnum+"  order by eventnum asc limit 8 ;";

		try{
			stmt = con.createStatement();
			
			rs = stmt.executeQuery(sql);

			while(rs.next()){
				data = new Event_list_dto();
				data.setTitle(rs.getString("title"));
				data.setEventstart(rs.getDate("eventstart").toString());
				data.setEventfinal(rs.getDate("eventfinish").toString());
				data.setEventnum(rs.getInt("eventnum"));
				articlelist.add(data);
			}

		}catch(Exception ex){
		}finally{
			close(rs);
			close(stmt);
		}
	
	
	return articlelist;
	
	}
	public ArrayList<Event_list_dto> eventarticle(String eventnum){
		ArrayList<Event_list_dto> articlelist = new ArrayList<Event_list_dto>();
		Event_list_dto data = null;
		
		Statement stmt = null;
		ResultSet rs = null;
		String sql="select * from event where eventnum="+eventnum+";";

		try{
			stmt = con.createStatement();
			
			rs = stmt.executeQuery(sql);

			while(rs.next()){
				data = new Event_list_dto();
				data.setTitle(rs.getString("title"));
				data.setEventstart(rs.getDate("eventstart").toString());
				data.setEventfinal(rs.getDate("eventfinish").toString());
				data.setEventnum(rs.getInt("eventnum"));
				articlelist.add(data);
			}

		}catch(Exception ex){
		}finally{
			close(rs);
			close(stmt);
		}
	
	
	return articlelist;
	
	}
	public ArrayList<Event_list_pagination_vo> pagination(){
		ArrayList<Event_list_pagination_vo> articlelist = new ArrayList<Event_list_pagination_vo>();
		Event_list_pagination_vo data = null;
		
		Statement stmt = null;
		ResultSet rs = null;
		ResultSetMetaData remeta = null;
		String sql="SELECT count(*) FROM event ;";
		
		try{
			stmt = con.createStatement();
			
			rs = stmt.executeQuery(sql);
		
			if(rs.next()){
				data = new Event_list_pagination_vo();
				data.setTotalnum(rs.getInt(1));
				data.setNownum(8);
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
