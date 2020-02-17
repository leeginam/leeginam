package Dto;

public class Event_list_pagination_vo {
		private int pagingsize ; //한페이지 출력되는 페이징의 사이즈
		private int nownum ;		//현재페이지
		private int totalnum ;		//아티클의(데이터) 총 숫자
		
		public int getPagingsize() {
			return pagingsize; 
		}
		public void setPagingsize(int pagingsize) {
			this.pagingsize = pagingsize;
		}
		public int getNownum() {
			return nownum;
		}
		public void setNownum(int nownum) {
			this.nownum = nownum;
		}
		public int getTotalnum() {
			return totalnum;
		}
		public void setTotalnum(int totalnum) {
			this.totalnum = totalnum;
		}
		
		
}
