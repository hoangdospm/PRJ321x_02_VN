package model;

public class ProductOrder {
	private int orderId;
	private int productId;
	private int amountProduct;
	private int priceProduct;
	private String nameProduct;
	private String description;
	private String imageSource;
	
	public ProductOrder() {
		super();
	}

	public ProductOrder(int orderId, int productId, int amountProduct, int priceProduct, String nameProduct, String description, String imageSource) {
		super();
		this.orderId = orderId;
		this.productId = productId;
		this.amountProduct = amountProduct;
		this.priceProduct = priceProduct;
		this.nameProduct = nameProduct;
		this.description = description;
		this.imageSource = imageSource;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getAmountProduct() {
		return amountProduct;
	}

	public void setAmountProduct(int amountProduct) {
		this.amountProduct = amountProduct;
	}

	public int getPriceProduct() {
		return priceProduct;
	}

	public void setPriceProduct(int priceProduct) {
		this.priceProduct = priceProduct;
	}

	public String getNameProduct() {
		return nameProduct;
	}

	public void setNameProduct(String nameProduct) {
		this.nameProduct = nameProduct;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImageSource() {
		return imageSource;
	}

	public void setImageSource(String imageSource) {
		this.imageSource = imageSource;
	}
	
	
}
