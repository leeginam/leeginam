package Dao;

import static Eventdb.javautil.close;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

import Dto.Event_list_dto;
import Dto.Store_list_dto;



public class Storedao {
	DataSource ds;
	Connection con;
	private static Storedao Storedao;

	private Storedao() {
	}

	public static Storedao getInstance(){  //싱글톤 객체생성
		if(Storedao == null){
			Storedao = new Storedao();
		}
		return Storedao;
	}

	public void setConnection(Connection con){  //디비 연결
		this.con = con;
	}
	
	public ArrayList<Store_list_dto> storelist(){
			ArrayList<Store_list_dto> articlelist = new ArrayList<Store_list_dto>();
			Store_list_dto data = null;
			
			Statement stmt = null;
			ResultSet rs = null;
			String sql="select * from store;";

			try{
				stmt = con.createStatement();
				
				rs = stmt.executeQuery(sql);
				
				while(rs.next()){
					data = new Store_list_dto();
					data.setProductname(rs.getString("productname"));
					data.setContents(rs.getString("contents"));
					data.setAfterprice(rs.getInt("afterprice"));
					data.setBeforeprice(rs.getInt("beforeprice"));
					data.setNumber(rs.getInt("number"));
					articlelist.add(data);
				}

			}catch(Exception ex){
			}finally{
				close(rs);
				close(stmt);
			}
		
		
		return articlelist;
		
	}
	public ArrayList<Store_list_dto> storedetail(String num){
		ArrayList<Store_list_dto> articlelist = new ArrayList<Store_list_dto>();
		Store_list_dto data = null;
		
		Statement stmt = null;
		ResultSet rs = null;
		String sql="select * from store where number='"+num+"';";

		try{
			stmt = con.createStatement();
			
			rs = stmt.executeQuery(sql);
	
			if(rs.next()){
				data = new Store_list_dto();
				data.setProductname(rs.getString("productname"));
				data.setContents(rs.getString("contents"));
				data.setAfterprice(rs.getInt("afterprice"));
				data.setBeforeprice(rs.getInt("beforeprice"));
				data.setNumber(rs.getInt("number"));
				data.setMadein(rs.getString("madein"));
				data.setPack(rs.getString("pack"));
				data.setExpiration(rs.getString("Expiration"));
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
