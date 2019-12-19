
	$(document).ready(function(){
		var aa = new Date();
		var year = aa.getFullYear();
		var month = aa.getMonth()+1;
		var date = aa.getDate();
		var dayLabel = aa.getDay();
		if(date<10){
		date='0'+date
		}
		if(month<10){
		month='0'+month
		}
		switch(dayLabel){
		case 0:dayLabel='일요일';
		break;
		case 1:dayLabel='월요일';
		break;
		case 2:dayLabel='화요일';
		break;
		case 3:dayLabel='수요일';
		break;
		case 4:dayLabel='목요일';
		break;
		case 5:dayLabel='금요일';
		break;
		case 6:dayLabel='토요일';
		break;
}
		var total=year+'-'+month+'-'+date+''+'('+dayLabel+')'+'&nbsp'+'기준'
		document.getElementById("bottom_video_box_in_box_right_box_date").innerHTML=total;
	 });
