package com.pe.test;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Random;

import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.usermodel.*;
import org.junit.Test;

import com.pe.dao.ListRecordDAO;
import com.pe.pojo.ListRecord;

public class AddListRecordTest
{
	@Test
	public void addListRecord()
	{
		Random r = new Random();
		for (int i = 10; i < 99; i++)
		{
			ListRecord listRecord = new ListRecord();
			listRecord.setStudentId("2014201309" + i);
			listRecord.setSchoolName("体育学院");
			listRecord.setMajorName("篮球");
			listRecord.setClassName("3班");
			listRecord.setStudentName("华" + i + "诗");
			if (r.nextInt(2) == 0)
			{
				listRecord.setSex("1");
			}
			else
			{
				listRecord.setSex("0");
			}
			listRecord.setTiZhi(String.valueOf(60 + r.nextInt(39)));
			listRecord.setXingTai(String.valueOf(60 + r.nextInt(39)));
			int num = r.nextInt(3);
			if (num == 0)
			{
				listRecord.setCeShi("测试通过");
			}
			else if (num == 1)
			{
				listRecord.setCeShi("需要补测");
			}
			else
			{
				listRecord.setCeShi("未预约");
			}
			ListRecordDAO listRecordDAO = new ListRecordDAO();
			ListRecord listRecordResult = listRecordDAO.save(listRecord);
			System.out.println(listRecordResult);
		}
	}

	@Test
	public void TestCreateExcel() throws IOException
	{
		Workbook wb = new HSSFWorkbook();

		CreationHelper createHelper = wb.getCreationHelper();
		Sheet sheet = wb.createSheet("new sheet");

		ListRecordDAO listRecordDAO = new ListRecordDAO();
		List<ListRecord> listRecordList = listRecordDAO.findAll();
		System.out.println("total : "+listRecordList.size());
		for (int i = 0; i < listRecordList.size(); i++)
		{
			ListRecord r = listRecordList.get(i);
			Row row = sheet.createRow((short) i);
			row.createCell(0).setCellValue(r.getSchoolName());
			row.createCell(1).setCellValue(r.getMajorName());
			row.createCell(2).setCellValue(r.getClassName());
			row.createCell(3).setCellValue(r.getStudentId());
			row.createCell(4).setCellValue(r.getStudentName());
			row.createCell(5).setCellValue(("1".equals(r.getSex())?"男":"女"));
			row.createCell(6).setCellValue(r.getTiZhi());
			row.createCell(7).setCellValue(r.getXingTai());
			row.createCell(8).setCellValue(r.getCeShi());
			System.out.println(i+" done.");
		}

		FileOutputStream fileOut = new FileOutputStream("C:/workbook.xls");
		wb.write(fileOut);
		fileOut.close();
	}
}
