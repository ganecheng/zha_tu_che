package com.pe.pojo;

/**
 * Trunk entity. @author MyEclipse Persistence Tools
 */

public class Trunk implements java.io.Serializable {

	// Fields

	private String id;
	private String vehicle;
	private String birthday;
	private String load;
	private String insurance;
	private String status;
	private String company;

	// Constructors

	/** default constructor */
	public Trunk() {
	}

	/** full constructor */
	public Trunk(String id, String vehicle, String birthday, String load,
			String insurance, String status, String company) {
		this.id = id;
		this.vehicle = vehicle;
		this.birthday = birthday;
		this.load = load;
		this.insurance = insurance;
		this.status = status;
		this.company = company;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getVehicle() {
		return this.vehicle;
	}

	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}

	public String getBirthday() {
		return this.birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getLoad() {
		return this.load;
	}

	public void setLoad(String load) {
		this.load = load;
	}

	public String getInsurance() {
		return this.insurance;
	}

	public void setInsurance(String insurance) {
		this.insurance = insurance;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCompany() {
		return this.company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

}