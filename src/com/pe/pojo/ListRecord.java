package com.pe.pojo;

/**
 * ListRecord entity. @author MyEclipse Persistence Tools
 */

public class ListRecord implements java.io.Serializable
{

	// Fields

	private String studentId;
	private String schoolName;
	private String majorName;
	private String className;
	private String studentName;
	private String sex;
	private String tiZhi;
	private String xingTai;
	private String ceShi;

	// Constructors

	/** default constructor */
	public ListRecord()
	{
	}

	/** full constructor */
	public ListRecord(String studentId, String schoolName, String majorName, String className, String studentName, String sex, String tiZhi, String xingTai,
			String ceShi)
	{
		this.studentId = studentId;
		this.schoolName = schoolName;
		this.majorName = majorName;
		this.className = className;
		this.studentName = studentName;
		this.sex = sex;
		this.tiZhi = tiZhi;
		this.xingTai = xingTai;
		this.ceShi = ceShi;
	}

	// Property accessors

	public String getStudentId()
	{
		return this.studentId;
	}

	public void setStudentId(String studentId)
	{
		this.studentId = studentId;
	}

	public String getSchoolName()
	{
		return this.schoolName;
	}

	public void setSchoolName(String schoolName)
	{
		this.schoolName = schoolName;
	}

	public String getMajorName()
	{
		return this.majorName;
	}

	public void setMajorName(String majorName)
	{
		this.majorName = majorName;
	}

	public String getClassName()
	{
		return this.className;
	}

	public void setClassName(String className)
	{
		this.className = className;
	}

	public String getStudentName()
	{
		return this.studentName;
	}

	public void setStudentName(String studentName)
	{
		this.studentName = studentName;
	}

	public String getSex()
	{
		return this.sex;
	}

	public void setSex(String sex)
	{
		this.sex = sex;
	}

	public String getTiZhi()
	{
		return this.tiZhi;
	}

	public void setTiZhi(String tiZhi)
	{
		this.tiZhi = tiZhi;
	}

	public String getXingTai()
	{
		return this.xingTai;
	}

	public void setXingTai(String xingTai)
	{
		this.xingTai = xingTai;
	}

	public String getCeShi()
	{
		return this.ceShi;
	}

	public void setCeShi(String ceShi)
	{
		this.ceShi = ceShi;
	}

}