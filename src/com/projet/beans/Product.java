package com.projet.beans;

public class Product {
	private int id_product;
	private String name;
	private int Qte;
	private String Category;
	private int price;
	private String linkPhotoAvant;
	private String linkPhotoArriere;
	private String linkPhotoCote;
	
	public String getLinkPhotoAvant() {
		return linkPhotoAvant;
	}
	public void setLinkPhotoAvant(String linkPhotoAvant) {
		this.linkPhotoAvant = linkPhotoAvant;
	}
	public String getLinkPhotoArriere() {
		return linkPhotoArriere;
	}
	public void setLinkPhotoArriere(String linkPhotoArrière) {
		this.linkPhotoArriere = linkPhotoArriere;
	}
	public String getLinkPhotoCote() {
		return linkPhotoCote;
	}
	public void setLinkPhotoCote(String linkPhotoCote) {
		this.linkPhotoCote = linkPhotoCote;
	}
	public int getId_product() {
		return id_product;
	}
	public void setId_product(int id_product) {
		this.id_product = id_product;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getQte() {
		return Qte;
	}
	public void setQte(int qte) {
		Qte = qte;
	}
	public String getCategory() {
		return Category;
	}
	public void setCategory(String category) {
		Category = category;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
