package model;

public class Product {
	private int id;
	private String name;
	private String description;
	private String promotion;
	private int price;
	private String imageSource;
	private String brand;
	private int category;
	private int ratingNumber;

	public Product() {
		super();
	}

	public Product(int id, String name, String description, String promotion, int price, String imageSource,
			String brand, int category, int ratingNumber) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.promotion = promotion;
		this.price = price;
		this.imageSource = imageSource;
		this.brand = brand;
		this.category = category;
		this.ratingNumber = ratingNumber;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPromotion() {
		return promotion;
	}

	public void setPromotion(String promotion) {
		this.promotion = promotion;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getImageSource() {
		return imageSource;
	}

	public void setImageSource(String imageSource) {
		this.imageSource = imageSource;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}
	
	@Override
	public String toString() {
		return "ID: " + id + "; Name: " + name;
	}

	public int getRatingNumber() {
		return ratingNumber;
	}

	public void setRatingNumber(int ratingNumber) {
		this.ratingNumber = ratingNumber;
	}
}
