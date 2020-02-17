package Dto;

public class Store_list_dto {
		String productname;
		String contents;
		int price;
		int Number;
		String madein;
		String pack;
		String expiration;
		String filename;
	

		public String getProductname() {
			return productname;
		}
		public void setProductname(String productname) {
			this.productname = productname;
		}
		public String getContents() {
			return contents;
		}
		public int getPrice() {
			return price;
		}
		public void setPrice(int price) {
			this.price = price;
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
		public int getNumber() {
			return Number;
		}
		public void setNumber(int number) {
			Number = number;
		}
		public String getFilename() {
			return filename;
		}
		public void setFilename(String filename) {
			this.filename = filename;
		}
}
