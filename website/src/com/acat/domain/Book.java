package com.acat.domain;

import java.io.Serializable;

public class Book implements Serializable {
	@Override
	public String toString() {
		return "Book [id=" + id + ", name=" + name + ", author=" + author
				+ ", price=" + price + ", image=" + image + ", description="
				+ description + ", classify_id=" + classify_id + "]";
	}
	private String id;
	private String name;
	private String author;
	private float price;
	private String image;
	private String description;
	private String classify_id;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getClassify_id() {
		return classify_id;
	}
	public void setClassify_id(String classify_id) {
		this.classify_id = classify_id;
	}
}
