package com.pe.common;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

import org.htmlparser.NodeFilter;
import org.htmlparser.Parser;
import org.htmlparser.Tag;
import org.htmlparser.filters.TagNameFilter;
import org.htmlparser.util.NodeList;
import org.htmlparser.util.ParserException;

public class CM
{
	/**
	 * 产生20位的主键id,字符串yyMMddHHmmssSSS + 7位随机数
	 * 
	 * @return
	 */
	public static String getRandomTwentyPrimaryKeyId()
	{
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHmmssSSS");
		String strTemp = sdf.format(calendar.getTime()) + getRandom_N_Number(2) + getRandom_N_Number(2) + getRandom_N_Number(1);
		return strTemp;
	}

	/**
	 * 获取六位数的校验码
	 * 
	 * @return
	 */
	public static String getRandomSixNumber()
	{
		Random r = new Random();
		String s = "";
		for (int i = 0; i < 6; i++)
		{
			s += r.nextInt(10);
		}
		return s;
	}

	/**
	 * 获取n个随机数字字符串
	 * 
	 * @param n
	 * @return
	 */
	public static String getRandom_N_Number(int n)
	{
		Random r = new Random();
		String s = "";
		for (int i = 0; i < n; i++)
		{
			s += r.nextInt(10);
		}
		return s;
	}

	/**
	 * 判断字符串是不是null或长度为0的字符串
	 * 
	 * @param s
	 * @return
	 */
	public static boolean validIsEmpty(String s)
	{
		if (s == null || s.equals(""))
		{
			return true;
		}
		else
		{
			return false;
		}
	}

	/**
	 * 判断字符串是不是null或长度为0的字符串(如果前后有空格,清除空格号再判断.)
	 * 
	 * @param s
	 * @return
	 */
	public static boolean validIsEmptyWithTrim(String s)
	{
		if (s == null || s.equals("") || s.trim().equals(""))
		{
			return true;
		}
		else
		{
			return false;
		}
	}

	/**
	 * 判断字符串列表中是不是有一个字符串为null或长度为0的字符串
	 * 
	 * @param s
	 * @return
	 */
	public static boolean validAtLeastOneIsEmpty(List<String> strList)
	{
		for (String s : strList)
		{
			if (validIsEmpty(s) == true)
			{
				return true;
			}
		}
		return false;
	}

	/**
	 * 得到图片路径的列表
	 * 
	 * @param htmlStr
	 *            传过来的html文档
	 * @param imgMaxNum
	 *            最多返回的图片数
	 * @return 返回图片地址的列表,0张图片时返回null
	 */
	public static List<String> getImgSrcList(String htmlStr, int imgMaxNum)
	{
		List<String> imgSrcList = new ArrayList<String>();
		Parser parser;
		try
		{
			parser = new Parser(htmlStr);
			// 获取img标签
			NodeFilter filter = new TagNameFilter("img");
			NodeList nodes = parser.extractAllNodesThatMatch(filter);

			if (nodes != null && nodes.size() != 0)
			{
				int imgNum = nodes.size() < imgMaxNum ? nodes.size() : imgMaxNum;
				for (int i = 0; i < imgNum; i++)
				{
					// 转换成普通的tag标签
					Tag tag = (Tag) nodes.elementAt(i);
					// Node textnode = (Node) nodes.elementAt(i);
					imgSrcList.add(tag.getAttribute("src"));
				}
				return imgSrcList;
			}
			else
			{
				return null;
			}
		}
		catch (ParserException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 产生25位的主键id,字符串yyMMddHHmmssSSS + 10位随机数
	 * 
	 * @return
	 */
	public static String getRandomTwentyFivePrimaryKeyId()
	{
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHmmssSSS");
		String strTemp = sdf.format(calendar.getTime()) + getRandom_N_Number(3) + getRandom_N_Number(3) + getRandom_N_Number(3) + getRandom_N_Number(1);
		return strTemp;
	}

}
