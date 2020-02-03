package model1;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import Dto.Dto;
import Dto.reply_dto;
import mybatis.map;

public class action {
	static action model = new action();
	
	public static action instance(){
		return model;
	}

	private SqlSessionFactory factory = map.getSqlSession();

	public List<Dto> selectSangpum(){
		List<Dto> list = null;
		SqlSession sqlSession = factory.openSession();
		list = sqlSession.selectList("information");
		sqlSession.close();
		return list;
	}
	
	public List<Dto> selectdetail(String num){
		List<Dto> list = null;
		SqlSession sqlSession = factory.openSession();
		list = sqlSession.selectList("detail_info",num);
		sqlSession.close();
		return list;
	}
	public void insert(Dto result){
		//List<Dto> list = result;
		SqlSession sqlSession = factory.openSession();
		sqlSession.insert("insert_info",result);
		sqlSession.commit();//인서트 딜리트 업데이트 하려면 이문장이필요
		sqlSession.close();	
	}
	public void delete(String num){
		String delete=num;
		SqlSession sqlSession = factory.openSession();
		sqlSession.delete("delete_info",delete);
		sqlSession.commit();//인서트 딜리트 업데이트 하려면 이문장이필요
		sqlSession.close();	
	}
	public void update(Dto num){

		SqlSession sqlSession = factory.openSession();
		sqlSession.update("update_info",num);
		sqlSession.commit();//인서트 딜리트 업데이트 하려면 이문장이필요
		sqlSession.close();	
	}
	public void reply_insert(reply_dto result){
		SqlSession sqlSession = factory.openSession();
		sqlSession.insert("reply_insert",result);
		sqlSession.commit();//인서트 딜리트 업데이트 하려면 이문장이필요
		sqlSession.close();	
	}
	public List<reply_dto>  reply_select(String num){
		List<reply_dto> list = null;
		SqlSession sqlSession = factory.openSession();
		list=sqlSession.selectList("reply_select",num);
		sqlSession.close();	
		return list;
	}
	
	
	
//	public void insert(String a,String b,String c){
//		
//		dto li=new dto();
//		li.setId(a);
//		li.setName(b);
//		li.setPassword(c);
//		
//		System.out.println("li.id="+li.getId());
//		System.out.println("li.name="+li.getName());
//		System.out.println("li.password="+li.getPassword());
//		
//		SqlSession sqlSession = factory.openSession();
//		sqlSession.insert("insert",li);
//		sqlSession.commit();
//		sqlSession.close();
//	}
//	
//	
//	public void del(String a){
//		String ac=a;
//		System.out.println(ac);
//			SqlSession sqlSession = factory.openSession();
//			sqlSession.delete("delete",ac);
//			sqlSession.commit();
//			sqlSession.close();
//		}
//	public void up(String a,String b,String c){
//		dto li=new dto();
//		li.setId(a);
//		li.setName(b);
//		li.setPassword(c);
//		
//		System.out.println("li.id="+li.getId());
//		System.out.println("li.name="+li.getName());
//		System.out.println("li.password="+li.getPassword());
//		
//			SqlSession sqlSession = factory.openSession();
//			sqlSession.update("update",li);
//			sqlSession.commit();
//			sqlSession.close();
//		}
}
