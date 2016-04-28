package com.pe.pojo;

/**
 * Driver entity. @author MyEclipse Persistence Tools
 */

public class Driver implements java.io.Serializable {

	// Fields

	private String id;
	private String name;
	private String age;
	private String sex;
	private String company;
	private String vehicle;

	// Constructors

	/** default constructor */
	public Driver() {
	}

	/** full constructor */
	public Driver(String id, String name, String age, String sex,
			String company, String vehicle) {
		this.id = id;
		this.name = name;
		this.age = age;
		this.sex = sex;
		this.company = company;
		this.vehicle = vehicle;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return this.age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getCompany() {
		return this.company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getVehicle() {
		return this.vehicle;
	}

	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}

}