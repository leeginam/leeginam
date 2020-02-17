package Eventsvc;

import static Eventdb.javautil.close;
import static Eventdb.javautil.getConnection;
import java.sql.Connection;
import Dao.Storedao;
import Dto.Persons_dto;

public class Purchase_service {
	
public Persons_dto person_info(String id) throws Exception{	
	Persons_dto article = null;
		Connection con = getConnection();
		Storedao storedao = Storedao.getInstance(); //쿼리문있는 dao 객체생성
		storedao.setConnection(con);
		article = storedao.person_info(id);
		close(con);
		
		return article;
	}
}




