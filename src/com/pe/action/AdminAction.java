package com.pe.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.struts2.ServletActionContext;

import com.pe.common.CM;
import com.pe.common.ExcelReader;
import com.pe.common.IResult;
import com.pe.pojo.Account;
import com.pe.pojo.Construction;
import com.pe.pojo.Driver;
import com.pe.pojo.ListRecord;
import com.pe.pojo.Trunk;
import com.pe.common.Page;
import com.pe.dao.ListRecordDAO;

public class AdminAction extends BaseAction
{

	// 常用变量
	private Map<String, Object> json;// 返回到前台的map对象
	private String info;// 提示信息
	private Account account;
	private ListRecord listRecord;
	private List<ListRecord> listRecordList;
	private String downloadTag;
	private String fileName;

	private String uploadTag;
	private File excelFile; // 具体上传文件的 引用 , 指向临时目录中的临时文件
	private String excelFileFileName; // 上传文件的名字 ,FileName 固定的写法
	private String excelFileContentType; // 上传文件的类型， ContentType 固定的写法

	private Construction construction;
	private List<Construction> constructionList;
	private Trunk trunk;
	private List<Trunk> trunkList;
	private Driver driver;
	private List<Driver> driverList;

	private Page page;

	public AdminAction()
	{
		json = new HashMap<String, Object>();
	}

	public String show_list_record_list()
	{
		// 获取分页
		String iPass = getRequest().getParameter("i");
		int index = 1;
		try
		{
			index = Integer.parseInt(iPass);
		}
		catch (Exception e)
		{
			index = 1;
		}
		int onePageSize = 12;
		List<Construction> constructionListFromDB = constructionDAO.getList(index, onePageSize);
		if (constructionListFromDB == null || constructionListFromDB.size() == 0)
		{
			info = "参数有误，暂未查到。";
			return SUCCESS;
		}
		int countTemp = 0;
		countTemp = constructionDAO.getTotalCount();
		if (countTemp == -1)
		{
			info = "参数有误，暂未查到。";
			return SUCCESS;
		}
		setConstructionList(constructionListFromDB);
		int ttpTemp = countTemp % onePageSize == 0 ? countTemp / onePageSize : countTemp / onePageSize + 1;
		Page pageTemp = new Page();
		pageTemp.setCurrentIndex(index);
		pageTemp.setTotalPages(ttpTemp);
		setPage(pageTemp);
		return SUCCESS;

	}

	public String show_driver_list()
	{
		// 获取分页
		String iPass = getRequest().getParameter("i");
		int index = 1;
		try
		{
			index = Integer.parseInt(iPass);
		}
		catch (Exception e)
		{
			index = 1;
		}
		int onePageSize = 12;
		List<Driver> driverListFromDB = driverDAO.getList(index, onePageSize);
		if (driverListFromDB == null || driverListFromDB.size() == 0)
		{
			info = "参数有误，暂未查到。";
			return SUCCESS;
		}
		int countTemp = 0;
		countTemp = driverDAO.getTotalCount();
		if (countTemp == -1)
		{
			info = "参数有误，暂未查到。";
			return SUCCESS;
		}
		setDriverList(driverListFromDB);
		int ttpTemp = countTemp % onePageSize == 0 ? countTemp / onePageSize : countTemp / onePageSize + 1;
		Page pageTemp = new Page();
		pageTemp.setCurrentIndex(index);
		pageTemp.setTotalPages(ttpTemp);
		setPage(pageTemp);
		return SUCCESS;

	}

	public String show_trunk_list()
	{
		// 获取分页
		String iPass = getRequest().getParameter("i");
		int index = 1;
		try
		{
			index = Integer.parseInt(iPass);
		}
		catch (Exception e)
		{
			index = 1;
		}
		int onePageSize = 12;
		List<Trunk> trunkListFromDB = trunkDAO.getList(index, onePageSize);
		if (trunkListFromDB == null || trunkListFromDB.size() == 0)
		{
			info = "参数有误，暂未查到。";
			return SUCCESS;
		}
		int countTemp = 0;
		countTemp = trunkDAO.getTotalCount();
		if (countTemp == -1)
		{
			info = "参数有误，暂未查到。";
			return SUCCESS;
		}
		setTrunkList(trunkListFromDB);
		int ttpTemp = countTemp % onePageSize == 0 ? countTemp / onePageSize : countTemp / onePageSize + 1;
		Page pageTemp = new Page();
		pageTemp.setCurrentIndex(index);
		pageTemp.setTotalPages(ttpTemp);
		setPage(pageTemp);
		return SUCCESS;

	}

	public String update_listrecord()
	{
		// 获取分页
		String id = getRequest().getParameter("id");
		if (CM.validIsEmpty(id))
		{
			info = "记录id是必需的。";
			return SUCCESS;
		}

		Construction constructionFromDB = constructionDAO.findById(id);
		if (constructionFromDB == null)
		{
			info = "没有找到此id。";
			return SUCCESS;
		}
		setConstruction(constructionFromDB);
		return SUCCESS;
	}

	public String update_driver()
	{
		// 获取分页
		String id = getRequest().getParameter("id");
		if (CM.validIsEmpty(id))
		{
			info = "记录id是必需的。";
			return SUCCESS;
		}

		Driver driverFromDB = driverDAO.findById(id);

		if (driverFromDB == null)
		{
			info = "没有找到此id。";
			return SUCCESS;
		}
		setDriver(driverFromDB);
		return SUCCESS;
	}

	public String update_trunk()
	{
		// 获取分页
		String id = getRequest().getParameter("id");
		if (CM.validIsEmpty(id))
		{
			info = "记录id是必需的。";
			return SUCCESS;
		}

		Trunk trunkFromDB = trunkDAO.findById(id);

		if (trunkFromDB == null)
		{
			info = "没有找到此id。";
			return SUCCESS;
		}
		setTrunk(trunkFromDB);
		return SUCCESS;
	}

	// 返回一个输入流，作为一个客户端来说是一个输入流，但对于服务器端是一个 输出流
	public InputStream getDownloadFile() throws Exception
	{
		if ("1".equals(downloadTag))
		{
			Workbook wb = new HSSFWorkbook();

			CreationHelper createHelper = wb.getCreationHelper();
			Sheet sheet = wb.createSheet("人员信息");

			Row rowHead = sheet.createRow((short) 0);
			rowHead.createCell(0).setCellValue("学院");
			rowHead.createCell(1).setCellValue("专业");
			rowHead.createCell(2).setCellValue("班级");
			rowHead.createCell(3).setCellValue("学号");
			rowHead.createCell(4).setCellValue("姓名");
			rowHead.createCell(5).setCellValue("性别");
			rowHead.createCell(6).setCellValue("测试状态");

			ListRecordDAO listRecordDAO = new ListRecordDAO();
			List<ListRecord> listRecordList = listRecordDAO.findAll();
			System.out.println("total : " + listRecordList.size());
			for (int i = 0; i < listRecordList.size(); i++)
			{
				ListRecord r = listRecordList.get(i);
				Row row = sheet.createRow((short) (i + 1));
				row.createCell(0).setCellValue(r.getSchoolName());
				row.createCell(1).setCellValue(r.getMajorName());
				row.createCell(2).setCellValue(r.getClassName());
				row.createCell(3).setCellValue(r.getStudentId());
				row.createCell(4).setCellValue(r.getStudentName());
				row.createCell(5).setCellValue(("1".equals(r.getSex()) ? "男" : "女"));
				row.createCell(6).setCellValue(r.getCeShi());
				System.out.println(i + " done.");
			}

			String real_path = ServletActionContext.getRequest().getRealPath("/") + CM.getRandomTwentyPrimaryKeyId() + ".xls";
			FileOutputStream fileOut = new FileOutputStream(real_path);
			wb.write(fileOut);
			fileOut.close();

			fileName = "人员信息.xls";
			fileName = URLEncoder.encode(fileName, "UTF-8");
			InputStream is = new FileInputStream(real_path);
			System.out.println("is = " + is);
			// 获取资源路径
			return is;
		}

		else if ("2".equals(downloadTag))
		{
			Workbook wb = new HSSFWorkbook();

			CreationHelper createHelper = wb.getCreationHelper();
			Sheet sheet = wb.createSheet("人员信息");

			Row rowHead = sheet.createRow((short) 0);
			rowHead.createCell(0).setCellValue("学院");
			rowHead.createCell(1).setCellValue("专业");
			rowHead.createCell(2).setCellValue("班级");
			rowHead.createCell(3).setCellValue("学号");
			rowHead.createCell(4).setCellValue("姓名");
			rowHead.createCell(5).setCellValue("性别");
			rowHead.createCell(6).setCellValue("体质结果明细");

			ListRecordDAO listRecordDAO = new ListRecordDAO();
			List<ListRecord> listRecordList = listRecordDAO.findAll();
			System.out.println("total : " + listRecordList.size());
			for (int i = 0; i < listRecordList.size(); i++)
			{
				ListRecord r = listRecordList.get(i);
				Row row = sheet.createRow((short) (i + 1));
				row.createCell(0).setCellValue(r.getSchoolName());
				row.createCell(1).setCellValue(r.getMajorName());
				row.createCell(2).setCellValue(r.getClassName());
				row.createCell(3).setCellValue(r.getStudentId());
				row.createCell(4).setCellValue(r.getStudentName());
				row.createCell(5).setCellValue(("1".equals(r.getSex()) ? "男" : "女"));
				row.createCell(6).setCellValue(r.getTiZhi());
				System.out.println(i + " done.");
			}

			String real_path = ServletActionContext.getRequest().getRealPath("/") + CM.getRandomTwentyPrimaryKeyId() + ".xls";
			FileOutputStream fileOut = new FileOutputStream(real_path);
			wb.write(fileOut);
			fileOut.close();

			fileName = "体质结果明细.xls";
			fileName = URLEncoder.encode(fileName, "UTF-8");
			InputStream is = new FileInputStream(real_path);
			System.out.println("is = " + is);
			// 获取资源路径
			return is;
		}
		else if ("3".equals(downloadTag))
		{
			Workbook wb = new HSSFWorkbook();

			CreationHelper createHelper = wb.getCreationHelper();
			Sheet sheet = wb.createSheet("人员信息");

			Row rowHead = sheet.createRow((short) 0);
			rowHead.createCell(0).setCellValue("学院");
			rowHead.createCell(1).setCellValue("专业");
			rowHead.createCell(2).setCellValue("班级");
			rowHead.createCell(3).setCellValue("学号");
			rowHead.createCell(4).setCellValue("姓名");
			rowHead.createCell(5).setCellValue("性别");
			rowHead.createCell(6).setCellValue("形态结果明细");

			ListRecordDAO listRecordDAO = new ListRecordDAO();
			List<ListRecord> listRecordList = listRecordDAO.findAll();
			System.out.println("total : " + listRecordList.size());
			for (int i = 0; i < listRecordList.size(); i++)
			{
				ListRecord r = listRecordList.get(i);
				Row row = sheet.createRow((short) (i + 1));
				row.createCell(0).setCellValue(r.getSchoolName());
				row.createCell(1).setCellValue(r.getMajorName());
				row.createCell(2).setCellValue(r.getClassName());
				row.createCell(3).setCellValue(r.getStudentId());
				row.createCell(4).setCellValue(r.getStudentName());
				row.createCell(5).setCellValue(("1".equals(r.getSex()) ? "男" : "女"));
				row.createCell(6).setCellValue(r.getXingTai());
				System.out.println(i + " done.");
			}

			String real_path = ServletActionContext.getRequest().getRealPath("/") + CM.getRandomTwentyPrimaryKeyId() + ".xls";
			FileOutputStream fileOut = new FileOutputStream(real_path);
			wb.write(fileOut);
			fileOut.close();

			fileName = "形态结果明细.xls";
			fileName = URLEncoder.encode(fileName, "UTF-8");
			InputStream is = new FileInputStream(real_path);
			System.out.println("is = " + is);
			// 获取资源路径
			return is;
		}
		else
		{
			return null;
		}
	}

	public String admin_add_listrecord_do()
	{
		String method = getRequest().getMethod();
		System.out.println("=========请求是get还是post:" + method);
		if (method.toUpperCase().equals("GET"))
		{
			System.out.println("============如果直接输入网址进来的,什么操作都不做,必须是表单提交的!==========");
			return "404";
		}
		List<String> toBeValidedList = new ArrayList<String>();
		toBeValidedList.add(construction.getName());
		toBeValidedList.add(construction.getRegion());
		toBeValidedList.add(construction.getType());
		toBeValidedList.add(construction.getArea());
		toBeValidedList.add(construction.getPeriod());
		toBeValidedList.add(construction.getInfo());
		if (CM.validAtLeastOneIsEmpty(toBeValidedList))
		{
			info = "必填项必须要填写。";
			json.put("success", false);
			json.put("info", info);
			return SUCCESS;
		}

		construction.setId(CM.getRandomTwentyFivePrimaryKeyId());

		Construction constructionResult = constructionDAO.save(construction);

		if (constructionResult == null)
		{
			info = "保存失败，请检查之后重新尝试。";
			json.put("success", false);
			json.put("info", info);
			return SUCCESS;
		}

		json.put("success", true);
		return SUCCESS;
	}

	public String admin_add_driver_do()
	{
		String method = getRequest().getMethod();
		System.out.println("=========请求是get还是post:" + method);
		if (method.toUpperCase().equals("GET"))
		{
			System.out.println("============如果直接输入网址进来的,什么操作都不做,必须是表单提交的!==========");
			return "404";
		}
		List<String> toBeValidedList = new ArrayList<String>();
		toBeValidedList.add(driver.getName());
		toBeValidedList.add(driver.getAge());
		toBeValidedList.add(driver.getSex());
		toBeValidedList.add(driver.getCompany());
		toBeValidedList.add(driver.getVehicle());
		if (CM.validAtLeastOneIsEmpty(toBeValidedList))
		{
			info = "必填项必须要填写。";
			json.put("success", false);
			json.put("info", info);
			return SUCCESS;
		}
		driver.setId(CM.getRandomTwentyFivePrimaryKeyId());
		Driver driverResult = driverDAO.save(driver);

		if (driverResult == null)
		{
			info = "保存失败，请检查之后重新尝试。";
			json.put("success", false);
			json.put("info", info);
			return SUCCESS;
		}

		json.put("success", true);
		return SUCCESS;
	}

	public String admin_add_trunk_do()
	{
		String method = getRequest().getMethod();
		System.out.println("=========请求是get还是post:" + method);
		if (method.toUpperCase().equals("GET"))
		{
			System.out.println("============如果直接输入网址进来的,什么操作都不做,必须是表单提交的!==========");
			return "404";
		}
		List<String> toBeValidedList = new ArrayList<String>();
		toBeValidedList.add(trunk.getVehicle());
		toBeValidedList.add(trunk.getBirthday());
		toBeValidedList.add(trunk.getLoad());
		toBeValidedList.add(trunk.getInsurance());
		toBeValidedList.add(trunk.getStatus());
		toBeValidedList.add(trunk.getCompany());
		if (CM.validAtLeastOneIsEmpty(toBeValidedList))
		{
			info = "必填项必须要填写。";
			json.put("success", false);
			json.put("info", info);
			return SUCCESS;
		}
		trunk.setId(CM.getRandomTwentyFivePrimaryKeyId());
		Trunk trunkResult = trunkDAO.save(trunk);

		if (trunkResult == null)
		{
			info = "保存失败，请检查之后重新尝试。";
			json.put("success", false);
			json.put("info", info);
			return SUCCESS;
		}

		json.put("success", true);
		return SUCCESS;
	}

	public String admin_delete_listrecord_do()
	{
		String id = getRequest().getParameter("id");
		if (CM.validIsEmpty(id))
		{
			info = "记录id是必需的。";
			return SUCCESS;
		}
		Construction constructionFromDB = constructionDAO.findById(id);
		if (constructionFromDB == null)
		{
			info = "没有找到此工厂。";
			json.put("success", false);
			json.put("info", info);
			return SUCCESS;
		}

		int deleteResult = constructionDAO.delete(constructionFromDB);
		if (deleteResult != IResult.DELETE_SUCCESS)
		{
			info = "删除失败，请检查之后重新尝试。";
			json.put("success", false);
			json.put("info", info);
			return SUCCESS;
		}

		json.put("success", true);
		return SUCCESS;
	}

	public String admin_delete_trunk_do()
	{
		String id = getRequest().getParameter("id");
		if (CM.validIsEmpty(id))
		{
			info = "记录id是必需的。";
			return SUCCESS;
		}
		Trunk trunkFromDB = trunkDAO.findById(id);
		if (trunkFromDB == null)
		{
			info = "没有找到此渣土车。";
			json.put("success", false);
			json.put("info", info);
			return SUCCESS;
		}

		int deleteResult = trunkDAO.delete(trunkFromDB);
		if (deleteResult != IResult.DELETE_SUCCESS)
		{
			info = "删除失败，请检查之后重新尝试。";
			json.put("success", false);
			json.put("info", info);
			return SUCCESS;
		}

		json.put("success", true);
		return SUCCESS;
	}

	public String admin_delete_driver_do()
	{
		String id = getRequest().getParameter("id");
		if (CM.validIsEmpty(id))
		{
			info = "记录id是必需的。";
			return SUCCESS;
		}
		Driver driverFromDB = driverDAO.findById(id);
		if (driverFromDB == null)
		{
			info = "没有找到此驾驶员。";
			json.put("success", false);
			json.put("info", info);
			return SUCCESS;
		}

		int deleteResult = driverDAO.delete(driverFromDB);
		if (deleteResult != IResult.DELETE_SUCCESS)
		{
			info = "删除失败，请检查之后重新尝试。";
			json.put("success", false);
			json.put("info", info);
			return SUCCESS;
		}

		json.put("success", true);
		return SUCCESS;
	}

	public String admin_update_listrecord_do()
	{
		String method = getRequest().getMethod();
		System.out.println("=========请求是get还是post:" + method);
		if (method.toUpperCase().equals("GET"))
		{
			System.out.println("============如果直接输入网址进来的,什么操作都不做,必须是表单提交的!==========");
			return "404";
		}
		if (getConstruction() == null || CM.validIsEmpty(getConstruction().getId()))
		{
			info = "编号是必需的。";
			json.put("success", false);
			json.put("info", info);
			return SUCCESS;
		}

		Construction constructionFromDB = constructionDAO.findById(getConstruction().getId());

		if (constructionFromDB == null)
		{
			info = "没有找到此记录。";
			json.put("success", false);
			json.put("info", info);
			return SUCCESS;
		}
		constructionFromDB.setName(getConstruction().getName());
		constructionFromDB.setRegion(getConstruction().getRegion());
		constructionFromDB.setType(getConstruction().getType());
		constructionFromDB.setArea(getConstruction().getArea());
		constructionFromDB.setPeriod(getConstruction().getPeriod());
		constructionFromDB.setInfo(getConstruction().getInfo());

		Construction constructionResult = constructionDAO.save(constructionFromDB);
		if (constructionResult == null)
		{
			info = "保存失败，请检查之后重新尝试。";
			json.put("success", false);
			json.put("info", info);
			return SUCCESS;
		}

		json.put("success", true);
		return SUCCESS;
	}

	public String admin_update_driver_do()
	{
		String method = getRequest().getMethod();
		System.out.println("=========请求是get还是post:" + method);
		if (method.toUpperCase().equals("GET"))
		{
			System.out.println("============如果直接输入网址进来的,什么操作都不做,必须是表单提交的!==========");
			return "404";
		}
		if (getDriver() == null || CM.validIsEmpty(getDriver().getId()))
		{
			info = "编号是必需的。";
			json.put("success", false);
			json.put("info", info);
			return SUCCESS;
		}

		Driver driverFromDB = driverDAO.findById(getDriver().getId());

		if (driverFromDB == null)
		{
			info = "没有找到此记录。";
			json.put("success", false);
			json.put("info", info);
			return SUCCESS;
		}
		driverFromDB.setName(getDriver().getName());
		driverFromDB.setAge(getDriver().getAge());
		driverFromDB.setSex(getDriver().getSex());
		driverFromDB.setCompany(getDriver().getCompany());
		driverFromDB.setVehicle(getDriver().getVehicle());

		Driver driverResult = driverDAO.save(driverFromDB);
		if (driverResult == null)
		{
			info = "保存失败，请检查之后重新尝试。";
			json.put("success", false);
			json.put("info", info);
			return SUCCESS;
		}

		json.put("success", true);
		return SUCCESS;
	}

	public String admin_update_trunk_do()
	{
		String method = getRequest().getMethod();
		System.out.println("=========请求是get还是post:" + method);
		if (method.toUpperCase().equals("GET"))
		{
			System.out.println("============如果直接输入网址进来的,什么操作都不做,必须是表单提交的!==========");
			return "404";
		}
		if (getTrunk() == null || CM.validIsEmpty(getTrunk().getId()))
		{
			info = "编号是必需的。";
			json.put("success", false);
			json.put("info", info);
			return SUCCESS;
		}
		Trunk trunkFromDB = trunkDAO.findById(getTrunk().getId());

		if (trunkFromDB == null)
		{
			info = "没有找到此记录。";
			json.put("success", false);
			json.put("info", info);
			return SUCCESS;
		}
		trunkFromDB.setVehicle(getTrunk().getVehicle());
		trunkFromDB.setBirthday(getTrunk().getBirthday());
		trunkFromDB.setLoad(getTrunk().getLoad());
		trunkFromDB.setInsurance(getTrunk().getInsurance());
		trunkFromDB.setStatus(getTrunk().getStatus());
		trunkFromDB.setCompany(getTrunk().getCompany());

		Trunk trunkResult = trunkDAO.save(trunkFromDB);
		if (trunkResult == null)
		{
			info = "保存失败，请检查之后重新尝试。";
			json.put("success", false);
			json.put("info", info);
			return SUCCESS;
		}

		json.put("success", true);
		return SUCCESS;
	}

	public String admin_upload_file_do() throws IOException
	{
		// 获取文件存储路径
		String path = ServletActionContext.getRequest().getRealPath("/file/upload");
		// 输出流
		String tempFileName = CM.getRandomTwentyPrimaryKeyId() + ".xls";
		OutputStream os = new FileOutputStream(new File(path, tempFileName));
		// 输入流
		InputStream is = new FileInputStream(excelFile);

		byte[] buf = new byte[1024];
		int length = 0;

		while (-1 != (length = is.read(buf)))
		{
			os.write(buf, 0, length);
		}
		is.close();
		os.close();

		if ("1".equals(uploadTag))
		{
			try
			{
				// 对读取Excel表格标题测试
				InputStream excel_is = new FileInputStream(new File(path, tempFileName));
				ExcelReader excelReader = new ExcelReader();
				String[] title = excelReader.readExcelTitle(excel_is);
				System.out.println("获得Excel表格的标题:");
				for (String s : title)
				{
					System.out.print(s + " ");
				}

				// 对读取Excel表格内容测试
				InputStream excel_is2 = new FileInputStream(new File(path, tempFileName));
				Map<Integer, String> map = excelReader.readExcelContent(excel_is2);
				System.out.println("获得Excel表格的内容:");
				List<ListRecord> listRecordListForSave = new ArrayList<ListRecord>();
				for (int i = 1; i <= map.size(); i++)
				{
					System.out.println(map.get(i));
					String[] tempArray = map.get(i).split("\t");
					ListRecord listRecordTemp = new ListRecord();
					listRecordTemp.setSchoolName(tempArray[0]);
					listRecordTemp.setMajorName(tempArray[1]);
					listRecordTemp.setClassName(tempArray[2]);
					listRecordTemp.setStudentId(tempArray[3]);
					listRecordTemp.setStudentName(tempArray[4]);
					listRecordTemp.setSex(tempArray[5].equals("男") ? "1" : "0");
					listRecordListForSave.add(listRecordTemp);
				}

				List<ListRecord> listRecordListResult = listRecordDAO.saveList(listRecordListForSave);
				if (listRecordListResult == null || listRecordListResult.size() == 0)
				{
					info = "保存0条记录，请检查Excel是否满足要求。";
					json.put("success", false);
					json.put("info", info);
					return SUCCESS;
				}

			}
			catch (FileNotFoundException e)
			{
				System.out.println("未找到指定路径的文件!");
				e.printStackTrace();
				info = "处理文件时出错，请检查Excel是否满足要求。";
				json.put("success", false);
				json.put("info", info);
				return SUCCESS;
			}
		}
		else if ("2".equals(uploadTag))
		{
			try
			{
				// 对读取Excel表格标题测试
				InputStream excel_is = new FileInputStream(new File(path, tempFileName));
				ExcelReader excelReader = new ExcelReader();
				String[] title = excelReader.readExcelTitle(excel_is);
				System.out.println("获得Excel表格的标题:");
				for (String s : title)
				{
					System.out.print(s + " ");
				}

				// 对读取Excel表格内容测试
				InputStream excel_is2 = new FileInputStream(new File(path, tempFileName));
				Map<Integer, String> map = excelReader.readExcelContent(excel_is2);
				System.out.println("获得Excel表格的内容:");
				List<ListRecord> listRecordListForSave = new ArrayList<ListRecord>();
				for (int i = 1; i <= map.size(); i++)
				{
					System.out.println(map.get(i));
					String[] tempArray = map.get(i).split("\t");

					ListRecord listRecordFromDB = listRecordDAO.findById(tempArray[0]);
					if (listRecordFromDB != null)
					{
						listRecordFromDB.setTiZhi(tempArray[1]);
						listRecordListForSave.add(listRecordFromDB);
					}
				}

				List<ListRecord> listRecordListResult = listRecordDAO.saveList(listRecordListForSave);
				if (listRecordListResult == null || listRecordListResult.size() == 0)
				{
					info = "保存0条记录，请检查Excel是否满足要求。";
					json.put("success", false);
					json.put("info", info);
					return SUCCESS;
				}

			}
			catch (FileNotFoundException e)
			{
				System.out.println("未找到指定路径的文件!");
				e.printStackTrace();
				info = "处理文件时出错，请检查Excel是否满足要求。";
				json.put("success", false);
				json.put("info", info);
				return SUCCESS;
			}
		}
		else if ("3".equals(uploadTag))
		{
			try
			{
				// 对读取Excel表格标题测试
				InputStream excel_is = new FileInputStream(new File(path, tempFileName));
				ExcelReader excelReader = new ExcelReader();
				String[] title = excelReader.readExcelTitle(excel_is);
				System.out.println("获得Excel表格的标题:");
				for (String s : title)
				{
					System.out.print(s + " ");
				}

				// 对读取Excel表格内容测试
				InputStream excel_is2 = new FileInputStream(new File(path, tempFileName));
				Map<Integer, String> map = excelReader.readExcelContent(excel_is2);
				System.out.println("获得Excel表格的内容:");
				List<ListRecord> listRecordListForSave = new ArrayList<ListRecord>();
				for (int i = 1; i <= map.size(); i++)
				{
					System.out.println(map.get(i));
					String[] tempArray = map.get(i).split("\t");

					ListRecord listRecordFromDB = listRecordDAO.findById(tempArray[0]);
					if (listRecordFromDB != null)
					{
						listRecordFromDB.setXingTai(tempArray[1]);
						listRecordListForSave.add(listRecordFromDB);
					}
				}

				List<ListRecord> listRecordListResult = listRecordDAO.saveList(listRecordListForSave);
				if (listRecordListResult == null || listRecordListResult.size() == 0)
				{
					info = "保存0条记录，请检查Excel是否满足要求。";
					json.put("success", false);
					json.put("info", info);
					return SUCCESS;
				}

			}
			catch (FileNotFoundException e)
			{
				System.out.println("未找到指定路径的文件!");
				e.printStackTrace();
				info = "处理文件时出错，请检查Excel是否满足要求。";
				json.put("success", false);
				json.put("info", info);
				return SUCCESS;
			}
		}

		json.put("success", true);
		return SUCCESS;
	}

	@Override
	public String execute() throws Exception
	{
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

	public String getInfo()
	{
		return info;
	}

	public void setInfo(String info)
	{
		this.info = info;
	}

	public Account getAccount()
	{
		return account;
	}

	public void setAccount(Account account)
	{
		this.account = account;
	}

	public List<ListRecord> getListRecordList()
	{
		return listRecordList;
	}

	public void setListRecordList(List<ListRecord> listRecordList)
	{
		this.listRecordList = listRecordList;
	}

	public Page getPage()
	{
		return page;
	}

	public void setPage(Page page)
	{
		this.page = page;
	}

	public String getDownloadTag()
	{
		return downloadTag;
	}

	public void setDownloadTag(String downloadTag)
	{
		this.downloadTag = downloadTag;
	}

	public String getFileName()
	{
		return fileName;
	}

	public void setFileName(String fileName)
	{
		this.fileName = fileName;
	}

	public ListRecord getListRecord()
	{
		return listRecord;
	}

	public void setListRecord(ListRecord listRecord)
	{
		this.listRecord = listRecord;
	}

	public String getUploadTag()
	{
		return uploadTag;
	}

	public void setUploadTag(String uploadTag)
	{
		this.uploadTag = uploadTag;
	}

	public File getExcelFile()
	{
		return excelFile;
	}

	public void setExcelFile(File excelFile)
	{
		this.excelFile = excelFile;
	}

	public String getExcelFileFileName()
	{
		return excelFileFileName;
	}

	public void setExcelFileFileName(String excelFileFileName)
	{
		this.excelFileFileName = excelFileFileName;
	}

	public String getExcelFileContentType()
	{
		return excelFileContentType;
	}

	public void setExcelFileContentType(String excelFileContentType)
	{
		this.excelFileContentType = excelFileContentType;
	}

	public Construction getConstruction()
	{
		return construction;
	}

	public void setConstruction(Construction construction)
	{
		this.construction = construction;
	}

	public List<Construction> getConstructionList()
	{
		return constructionList;
	}

	public void setConstructionList(List<Construction> constructionList)
	{
		this.constructionList = constructionList;
	}

	public Trunk getTrunk()
	{
		return trunk;
	}

	public void setTrunk(Trunk trunk)
	{
		this.trunk = trunk;
	}

	public List<Trunk> getTrunkList()
	{
		return trunkList;
	}

	public void setTrunkList(List<Trunk> trunkList)
	{
		this.trunkList = trunkList;
	}

	public Driver getDriver()
	{
		return driver;
	}

	public void setDriver(Driver driver)
	{
		this.driver = driver;
	}

	public List<Driver> getDriverList()
	{
		return driverList;
	}

	public void setDriverList(List<Driver> driverList)
	{
		this.driverList = driverList;
	}

}
