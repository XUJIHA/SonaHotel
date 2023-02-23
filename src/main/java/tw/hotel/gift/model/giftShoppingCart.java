package tw.hotel.gift.model;

public class giftShoppingCart {
	//存放商品实体类的
	private souvenirBean sbean;
	//商品数量
	private Integer cartnum;
	//商品數量*商品價錢Subtotal
	private double subtotal;
	//totalamount
	private double total;
	
	public giftShoppingCart() {
		
	}
	
	
	
	public giftShoppingCart(souvenirBean sbean, Integer cartnum, double subtotal, double total) {
		this.sbean = sbean;
		this.cartnum = cartnum;
		this.subtotal = subtotal;
		this.total = total;
	}



	public double getTotal() {
		return total;
	}



	public void setTotal(double total) {
		this.total = total;
	}



	public souvenirBean getSbean() {
		return sbean;
	}

	public void setSbean(souvenirBean sbean) {
		this.sbean = sbean;
	}

	public Integer getCartnum() {
		return cartnum;
	}

	public void setCartnum(Integer cartnum) {
		this.cartnum = cartnum;
	}


	public double getSubtotal() {
		return sbean.getSprice() * cartnum;
	}


	public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}



	@Override
	public String toString() {
		return "giftShoppingCart [sbean=" + sbean + ", cartnum=" + cartnum + ", subtotal=" + subtotal + ", total="
				+ total + "]";
	}


	
	
	







	

	

	
	
}
