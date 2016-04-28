package com.pe.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.pe.dao.ConstructionDAO;
import com.pe.dao.DriverDAO;
import com.pe.dao.ListRecordDAO;
import com.pe.dao.TrunkDAO;

public abstract class BaseAction extends ActionSupport
{

	// 常用字符串
	public static final String GLOBAL_RESULT_HOME = "home";
	public static final String GLOBAL_RESULT_EXCEPTION = "exception";
	public static final String GLOBAL_RESULT_404 = "404";
	public static final String GLOBAL_RESULT_LOGIN = "login";

	// 常用DAO
	public ListRecordDAO listRecordDAO;
	public ConstructionDAO constructionDAO;
	public DriverDAO driverDAO;
	public TrunkDAO trunkDAO;

	public String info;// 提示信息

	public BaseAction()
	{
		super();
		listRecordDAO = new ListRecordDAO();
		constructionDAO = new ConstructionDAO();
		driverDAO = new DriverDAO();
		trunkDAO = new TrunkDAO();

	}

	public HttpServletRequest getRequest()
	{
		return ServletActionContext.getRequest();
	}

	public HttpServletResponse getResponse()
	{
		return ServletActionContext.getResponse();
	}

	public HttpSession getSession()
	{
		return getRequest().getSession();
	}

	public ServletContext getApplication()
	{
		return ServletActionContext.getServletContext();
	}

	public String getRealyPath(String path)
	{
		return getApplication().getRealPath(path);
	}

	public String getInfo()
	{
		return info;
	}

	public void setInfo(String info)
	{
		this.info = info;
	}

}
