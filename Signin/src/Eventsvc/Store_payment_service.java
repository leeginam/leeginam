package Eventsvc;

import static Eventdb.javautil.close;
import static Eventdb.javautil.getConnection;
import java.sql.Connection;
import java.util.ArrayList;
import Dao.Storedao;
import Dto.Store_list_dto;
import Dto.purchase_dto;;

	public class Store_payment_service {
		
	public void store_payment(purchase_dto purchase) throws Exception{
		
			System.out.println(purchase.getBuyer());
			System.out.println(purchase.getCard());
			System.out.println(purchase.getPayment_method());
			System.out.println(purchase.getPrice());
			System.out.println(purchase.getProduct_num());
			
		
			Connection con = getConnection();
			Storedao storedao = Storedao.getInstance(); //쿼리문있는 dao 객체생성
			storedao.setConnection(con);
			storedao.store_purchase_insert(purchase);

			
		}

	}
		

