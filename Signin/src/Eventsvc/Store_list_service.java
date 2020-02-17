package Eventsvc;

import static Eventdb.javautil.close;
import static Eventdb.javautil.getConnection;
import java.sql.Connection;
import java.util.ArrayList;
import Dao.Storedao;
import Dto.Store_list_dto;;

public class Store_list_service {
	
public ArrayList<Store_list_dto> getArticleList(String re) throws Exception{
		ArrayList<Store_list_dto> articleList = null;
		Connection con = getConnection();
		Storedao storedao = Storedao.getInstance(); //쿼리문있는 dao 객체생성
		storedao.setConnection(con);
		if(re==null) {
		articleList = storedao.storelist();
		close(con);
		}
		else if(re!=null) {
		articleList = storedao.storedetail(re);
		close(con);	
		}
		return articleList;
	}

}
	

