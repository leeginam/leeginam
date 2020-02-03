package Apicon;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import java.util.ArrayList;
import java.util.Calendar;


import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import Dto.BoxOfficeDto;

public class Boxoffice {

    public ArrayList<BoxOfficeDto> boxofficelist() {
       
        ArrayList<BoxOfficeDto> list = new ArrayList<BoxOfficeDto>();
        try {
        	Calendar cal = Calendar.getInstance();
        	 
        
        	int yearint = cal.get ( cal.YEAR );
        	int monthint = cal.get ( cal.MONTH ) + 1 ;
        	int dateint = cal.get ( cal.DATE ) - 1;
        	String month="";
        	String date="";
        	if(dateint==0){
        		monthint = monthint-1;
        		if(monthint==2){
        			dateint=28;
        			
        		}else if((monthint==2&&yearint % 4 == 0 && yearint % 100 != 0) || yearint % 400 == 0){
        			dateint=29;
        			
        		}else if(monthint==1||monthint==3||monthint==5||monthint==7||monthint==8||monthint==10||monthint==12){
        			dateint=31;
        		}
        		else if (monthint==4||monthint==6||monthint==9||monthint==11){
        			dateint=30;
        		}
        		else if(monthint==0){
        			yearint=yearint-1;
        			monthint=12;
        			dateint=31;
        		}
        		
        	}
        	if(monthint<10){
        		month="0"+Integer.toString(monthint);
        		}else{
        		month=Integer.toString(monthint);
        		}	
        	if(dateint<10){
        		date="0"+Integer.toString(dateint);
        		}else{
        		date=Integer.toString(dateint);
        		}
        	String year=Integer.toString(yearint);
        	String mTime = year+month+date; 
     
        	
        
            String apiURL ="http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=9c54a229f03f55f7f29e381b3eb14177"+"&targetDt="+mTime; // json 
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
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
            
            //System.out.println(response.toString());
            
            JSONParser jsonParse = new JSONParser(); //JSONParse에 json데이터를 넣어 파싱한 다음 JSONObject로 변환한다. 
            JSONObject jsonObj = (JSONObject) jsonParse.parse(response.toString()); //JSONObject에서 PersonsArray를 get하여 JSONArray에 저장한다. 
            
            JSONObject jsonObj2 =(JSONObject) jsonParse.parse(jsonObj.get("boxOfficeResult").toString());
            
            JSONArray jsonArray = (JSONArray) jsonParse.parse(jsonObj2.get("dailyBoxOfficeList").toString());
 
            for(int i=0;i<jsonArray.size();i++){
            	BoxOfficeDto bdto= new BoxOfficeDto();
            	JSONObject jsonlist = (JSONObject) jsonParse.parse(jsonArray.get(i).toString());
            	bdto.setMovieNm(jsonlist.get("movieNm").toString());
            	bdto.setOpenDt(jsonlist.get("openDt").toString());
            	bdto.setAudiAcc(jsonlist.get("audiAcc").toString());
            	list.add(bdto);
            		
            	
            //System.out.println(jsonlist);
           // System.out.println(bdto.getMovieNm());
            //System.out.println(bdto.getOpenDt());
           // System.out.println(bdto.getAudiAcc());
            	
            }
          
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
}