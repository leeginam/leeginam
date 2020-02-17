package Apicon;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import Dto.navermovie_article_dto; 
public class Navermovie {
	   BufferedReader br;
	   String clientId = "u6K2kBDy180EDXXdml56";
	   String clientSecret = "aMrE8TymR8";
	   String movie="" ;
	

    public String movieposter(String title) {
  
        Crawling api = new Crawling();

        try {
        	
            String text = URLEncoder.encode(title, "UTF-8");
            String apiURL = "https://openapi.naver.com/v1/search/movie?query="+ text; // json 
            //String apiURL = "https://openapi.naver.com/v1/search/blog.xml?query="+ text; //
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            int responseCode = con.getResponseCode();
         
            if(responseCode==200) {
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            

            
            JSONParser jsonParse = new JSONParser(); //JSONParse�� json�곗�댄�곕�� �ｌ�� ���깊�� �ㅼ�� JSONObject濡� 蹂�������. 
            JSONObject jsonObj = (JSONObject) jsonParse.parse(response.toString()); //JSONObject���� PersonsArray瑜� get���� JSONArray�� ���ν����. 
            JSONArray jsonArray =(JSONArray) jsonParse.parse(jsonObj.get("items").toString());
            JSONObject jsonobj2 = (JSONObject) jsonParse.parse(jsonArray.get(0).toString());
            movie= jsonobj2.get("image").toString();
        
    
            String code = "";
            if(movie.length()==70){
            code = movie.substring(49,55);
            }
            else if(movie.length()==69){
            code= movie.substring(49,54);
            }
           
            String urlbig = "https://movie.naver.com/movie/bi/mi/photoViewPopup.nhn?movieCode="+code;
            movie = api.naverPoster(urlbig);
        } catch (Exception e) {
            System.out.println(e);
        }
        return movie;
    }
    
    

	public List<navermovie_article_dto> moviearticle(String title){
    	System.out.println("메소드안"+title);
		List<navermovie_article_dto> li =new ArrayList<navermovie_article_dto>();
    	Crawling api = new Crawling();
    	navermovie_article_dto article = new navermovie_article_dto();
        try {
        	
            String text = URLEncoder.encode(title, "UTF-8");
            String apiURL = "https://openapi.naver.com/v1/search/movie?query="+ text; // json 
            //String apiURL = "https://openapi.naver.com/v1/search/blog.xml?query="+ text; //
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            int responseCode = con.getResponseCode();
         
            if(responseCode==200) {
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            
            System.out.println(response.toString());
            
            JSONParser jsonParse = new JSONParser(); //JSONParse�� json�곗�댄�곕�� �ｌ�� ���깊�� �ㅼ�� JSONObject濡� 蹂�������. 
            JSONObject jsonObj = (JSONObject) jsonParse.parse(response.toString()); //JSONObject���� PersonsArray瑜� get���� JSONArray�� ���ν����. 
            JSONArray jsonArray =(JSONArray) jsonParse.parse(jsonObj.get("items").toString());
            JSONObject jsonobj2 = (JSONObject) jsonParse.parse(jsonArray.get(0).toString());
            movie= jsonobj2.get("image").toString();
            System.out.println(movie);
            System.out.println("길이:"+movie.length());
            String code = "";
            
            if(movie.length()==70){
            code = movie.substring(49,55);
            }
            else if(movie.length()==69){
            code= movie.substring(49,54);
            }
            System.out.println("코드:"+code);
            String urlbig = "https://movie.naver.com/movie/bi/mi/photoViewPopup.nhn?movieCode="+code;
            movie = api.naverPoster(urlbig);
            
            article.setTitle(jsonobj2.get("title").toString());
            article.setActor(jsonobj2.get("actor").toString());
            article.setDirector(jsonobj2.get("director").toString());
            article.setImglink(movie);
            article.setOpenday(jsonobj2.get("pubDate").toString());
            article.setSubtitle(jsonobj2.get("subtitle").toString());
            article.setUserrating(jsonobj2.get("userRating").toString());
            li.add(article);
            System.out.println("액터들"+li.get(0).getActor());
            
        } catch (Exception e) {
            System.out.println(e);
        }
    	
    	
    	return li;
    	
    }
}