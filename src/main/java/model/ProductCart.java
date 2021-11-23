package model;

public class ProductCart {
	private Product productData;
	private int amountProduct;
	
	public ProductCart() {
		super();
	}

	public ProductCart(Product productData) {
		super();
		this.productData = productData;
		this.amountProduct = 1;
	}

	public ProductCart(Product productData, int number) {
		super();
		this.productData = productData;
		this.amountProduct = number;
	}

	public Product getProductData() {
		return productData;
	}

	public void setProductData(Product productData) {
		this.productData = productData;
	}

	public int getAmountProduct() {
		return amountProduct;
	}

	public void setAmountProduct(int number) {
		this.amountProduct = number;
	}
}
