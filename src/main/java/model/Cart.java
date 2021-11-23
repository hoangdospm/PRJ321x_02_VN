package model;

import java.util.ArrayList;
import java.util.List;

public class Cart {
	List<ProductCart> productList;
	
	public Cart() {
		productList = new ArrayList<>();
	}
	
	public List<ProductCart> getProductList() {
		return productList;
	}
	
	public void add(Product newProduct) {
		for (ProductCart item : productList) {
			if (item.getProductData().getId() == newProduct.getId()) {
				item.setAmountProduct(item.getAmountProduct() + 1);
				return;
			}
		}
		productList.add(new ProductCart(newProduct));
	}
	
	public void subtract(int productId) {
		for (ProductCart item : productList) {
			if (item.getProductData().getId() == productId) {
				if (item.getAmountProduct() == 1) {
					productList.remove(item);
				} else {
					item.setAmountProduct(item.getAmountProduct() - 1);
				}
				return;
			}
		}
	}
	
	public void remove(int productId) {
		for (ProductCart item : productList) {
			if (item.getProductData().getId() == productId) {
				productList.remove(item);
				return;
			}
		}
	}
	
	public int getTotalMoney() {
		int total = 0;
		for (ProductCart item : productList) {
			total += item.getProductData().getPrice() * item.getAmountProduct();
		}
		return total;
	}
}
