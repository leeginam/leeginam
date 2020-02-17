package Apicon;



import java.io.IOException;
import java.util.ArrayList;

import Dto.megaboxdata;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Crawling {
	
	public String naverPoster(String url){
		String jpg = "";
		Element a = null ;
		System.out.println("蹂�寃�: "+url);
		try {
			Document doc = Jsoup.connect(url).get();
			a=doc.select("#targetImage").get(0);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		jpg = a.getElementsByAttribute("src").attr("src");

		return jpg;
	}
	
}
