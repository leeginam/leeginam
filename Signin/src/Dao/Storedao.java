package Dao;

import static Eventdb.javautil.close;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

import Dto.Event_list_dto;
import Dto.Persons_dto;
import Dto.Store_list_dto;
import Dto.purchase_dto;



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
					data.setPrice(rs.getInt("price"));
					data.setNumber(rs.getInt("num"));
					data.setFilename(rs.getString("filename"));
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
		String sql="select * from store where num='"+num+"';";

		try{
			stmt = con.createStatement();
			
			rs = stmt.executeQuery(sql);
	
			if(rs.next()){
				data = new Store_list_dto();
				data.setProductname(rs.getString("productname"));
				data.setContents(rs.getString("contents"));
				data.setPrice(rs.getInt("price"));
				data.setNumber(rs.getInt("num"));
				data.setMadein(rs.getString("madein"));
				data.setPack(rs.getString("pack"));
				data.setFilename(rs.getString("filename"));
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
	public Persons_dto person_info(String id){
		Persons_dto data = null;
		
		Statement stmt = null;
		ResultSet rs = null;
		String sql=" select name,concat(substr(phone,1,3),\"-\",substr(phone,4,4),\"-\",substr(phone,8,4))as full from persons where id='"+id+"'";
		
		try{
			stmt = con.createStatement();
			
			rs = stmt.executeQuery(sql);
	
			if(rs.next()){
				data = new Persons_dto();
				data.setName(rs.getString("name"));
				data.setPhone(rs.getString("full"));
			}

			
		}catch(Exception ex){
		}finally{
			close(rs);
			close(stmt);
		}
	
	
	return data;
	
}
	
	public void store_purchase_insert(purchase_dto dto){
		
		String buyer=dto.getBuyer();
		String Product_num = Integer.toString(dto.getProduct_num());
		String quantity = Integer.toString(dto.getQuantity());
		String price = Integer.toString(dto.getPrice());
		String method=dto.getPayment_method();
		String card=dto.getCard();
		
		System.out.println("여기까지 값이 ?"+buyer);
		System.out.println("여기까지 값이 ?"+Product_num);
		System.out.println("여기까지 값이 ?"+quantity);
		System.out.println("여기까지 값이 ?"+price);
		System.out.println("여기까지 값이 ?"+method);
		System.out.println("여기까지 값이 ?"+card);
		
		
		Statement stmt = null;
		String sql="insert into purchase values("+Product_num+",'"+buyer+"',"+quantity+","+price+",'"+method+"','"+card+"');";
		System.out.println(sql);
		try{
			stmt = con.createStatement();
			 stmt.executeUpdate(sql);

			con.commit();
		}catch(Exception ex){
			System.out.println(ex);
		}finally{
			close(stmt);
		}
	
	
	
	}
	
		
}
