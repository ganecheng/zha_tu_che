package com.pe.action;

import java.util.HashMap;
import java.util.Map;

import com.pe.common.CM;
import com.pe.pojo.Account;

public class AccountAction extends BaseAction
{
	// 常用变量
	private Map<String, Object> json;// 返回到前台的map对象
	private Account account;

	public AccountAction()
	{
		json = new HashMap<String, Object>();
	}

	public String login_do()
	{
		String method = getRequest().getMethod();
		System.out.println("=========请求是get还是post:" + method);
		if (method.toUpperCase().equals("GET"))
		{
			System.out.println("============如果直接输入网址进来的,什么操作都不做,必须是表单提交的!==========");
			return "404";
		}
		if (CM.validIsEmpty(account.getId()) || CM.validIsEmpty(account.getPassword()))
		{
			info = "用户名、密码都是必填项。";
			json.put("success", false);
			json.put("info", info);
			return SUCCESS;
		}

		getSession().setAttribute("accountSession", account);
		json.put("success", true);
		return SUCCESS;

	}

	public Map<String, Object> getJson()
	{
		return json;
	}

	public void setJson(Map<String, Object> json)
	{
		this.json = json;
	}

	public Account getAccount()
	{
		return account;
	}

	public void setAccount(Account account)
	{
		this.account = account;
	}

}
