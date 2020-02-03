package model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.map;

public class action {
	static action model = new action();
	
	public static action instance(){
		return model;
	}


	private SqlSessionFactory factory = map.getSqlSession();

	public List<dto> selectSangpum(){
		List<dto> list = null;
		SqlSession sqlSession = factory.openSession();
		list = sqlSession.selectList("information");
		sqlSession.close();
		return list;
	}
	public void insert(String a,String b,String c){
		
		dto li=new dto();
		li.setId(a);
		li.setName(b);
		li.setPassword(c);
		
		System.out.println("li.id="+li.getId());
		System.out.println("li.name="+li.getName());
		System.out.println("li.password="+li.getPassword());
		
		SqlSession sqlSession = factory.openSession();
		sqlSession.insert("insert",li);
		sqlSession.commit();
		sqlSession.close();
	}
	
	
	public void del(String a){
		String ac=a;
		System.out.println(ac);
			SqlSession sqlSession = factory.openSession();
			sqlSession.delete("delete",ac);
			sqlSession.commit();
			sqlSession.close();
		}
	public void up(String a,String b,String c){
		dto li=new dto();
		li.setId(a);
		li.setName(b);
		li.setPassword(c);
		
		System.out.println("li.id="+li.getId());
		System.out.println("li.name="+li.getName());
		System.out.println("li.password="+li.getPassword());
		
			SqlSession sqlSession = factory.openSession();
			sqlSession.update("update",li);
			sqlSession.commit();
			sqlSession.close();
		}
}
