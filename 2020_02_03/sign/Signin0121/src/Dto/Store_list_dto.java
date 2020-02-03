package Dto;

public class Store_list_dto {
		String productname;
		String contents;
		int beforeprice;
		int afterprice;
		int Number;
		String madein;
		String pack;
		String expiration;
		

		public String getProductname() {
			return productname;
		}
		public void setProductname(String productname) {
			this.productname = productname;
		}
		public String getContents() {
			return contents;
		}
		public void setContents(String contents) {
			this.contents = contents;
		}
		public String getMadein() {
			return madein;
		}
		public void setMadein(String madein) {
			this.madein = madein;
		}
		public String getPack() {
			return pack;
		}
		public void setPack(String pack) {
			this.pack = pack;
		}
		public String getExpiration() {
			return expiration;
		}
		public void setExpiration(String expiration) {
			this.expiration = expiration;
		}
		public int getBeforeprice() {
			return beforeprice;
		}
		public void setBeforeprice(int beforeprice) {
			this.beforeprice = beforeprice;
		}
		public int getAfterprice() {
			return afterprice;
		}
		public void setAfterprice(int afterprice) {
			this.afterprice = afterprice;
		}
		public int getNumber() {
			return Number;
		}
		public void setNumber(int number) {
			Number = number;
		}
}
