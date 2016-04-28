package com.pe.pojo;

/**
 * Construction entity. @author MyEclipse Persistence Tools
 */

public class Construction implements java.io.Serializable {

	// Fields

	private String id;
	private String name;
	private String region;
	private String type;
	private String area;
	private String period;
	private String info;

	// Constructors

	/** default constructor */
	public Construction() {
	}

	/** full constructor */
	public Construction(String id, String name, String region, String type,
			String area, String period, String info) {
		this.id = id;
		this.name = name;
		this.region = region;
		this.type = type;
		this.area = area;
		this.period = period;
		this.info = info;
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

	public String getRegion() {
		return this.region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getArea() {
		return this.area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getPeriod() {
		return this.period;
	}

	public void setPeriod(String period) {
		this.period = period;
	}

	public String getInfo() {
		return this.info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

}