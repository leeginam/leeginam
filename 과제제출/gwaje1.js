
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
		case 0:dayLabel='�Ͽ���';
		break;
		case 1:dayLabel='������';
		break;
		case 2:dayLabel='ȭ����';
		break;
		case 3:dayLabel='������';
		break;
		case 4:dayLabel='�����';
		break;
		case 5:dayLabel='�ݿ���';
		break;
		case 6:dayLabel='�����';
		break;
}
		var total=year+'-'+month+'-'+date+''+'('+dayLabel+')'+'&nbsp'+'����'
		document.getElementById("bottom_video_box_in_box_right_box_date").innerHTML=total;
	 });
