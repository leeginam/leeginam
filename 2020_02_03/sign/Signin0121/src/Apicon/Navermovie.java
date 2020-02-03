package Apicon;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class Navermovie {

    public String movieposter(String title) {
        String clientId = "u6K2kBDy180EDXXdml56";
        String clientSecret = "aMrE8TymR8";
        String movie="" ;

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
            BufferedReader br;
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
            
           // System.out.println(response.toString());
            String data = response.toString();
            
            JSONParser jsonParse = new JSONParser(); //JSONParse에 json데이터를 넣어 파싱한 다음 JSONObject로 변환한다. 
            JSONObject jsonObj = (JSONObject) jsonParse.parse(response.toString()); //JSONObject에서 PersonsArray를 get하여 JSONArray에 저장한다. 
            JSONArray jsonArray =(JSONArray) jsonParse.parse(jsonObj.get("items").toString());
            JSONObject jsonobj2 = (JSONObject) jsonParse.parse(jsonArray.get(0).toString());
            movie= jsonobj2.get("image").toString();
            //System.out.println(movie);
            
          
        } catch (Exception e) {
           // System.out.println(e);
        }
        return movie;
    }
}