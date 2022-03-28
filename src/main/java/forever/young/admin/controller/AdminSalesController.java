package forever.young.admin.controller;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor.HSSFColorPredefined;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import forever.young.admin.service.AdminSalesService;
import forever.young.admin.vo.AdminSalesVO;

@Controller
public class AdminSalesController {

	@Autowired
	private AdminSalesService adminsalesservice;



	@RequestMapping(value = "monthExcel.mdo")
	public void monthExcel(AdminSalesVO adminsalesvo, HttpServletResponse response, Model model) throws Exception {
		List<AdminSalesVO> list = adminsalesservice.getSales(adminsalesvo);

		// 워크북 생성
		Workbook wb = new HSSFWorkbook();
		// 시트 생성
		Sheet sheet = wb.createSheet("상품별 매출현황");
		// 열 생성
		Row row = null;
		// 셀 생성
		Cell cell = null;

		int rowNo = 0;

		// 테이블 스타일 지정하기

		// 테이블 헤더용 스타일
		CellStyle headStyle = wb.createCellStyle();

		// 가는 경계선
		headStyle.setBorderTop(BorderStyle.THIN);
		headStyle.setBorderBottom(BorderStyle.THIN);
		headStyle.setBorderLeft(BorderStyle.THIN);
		headStyle.setBorderRight(BorderStyle.THIN);

		// 배경색
		headStyle.setFillForegroundColor(HSSFColorPredefined.LIGHT_GREEN.getIndex());
		headStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);

		// 데이터 가운데 정렬
		headStyle.setAlignment(HorizontalAlignment.CENTER);

		// 데이터용 경계 스타일 테두리 지정
		CellStyle bodyStyle = wb.createCellStyle();
		bodyStyle.setBorderTop(BorderStyle.THIN);
		bodyStyle.setBorderBottom(BorderStyle.THIN);
		bodyStyle.setBorderLeft(BorderStyle.THIN);
		bodyStyle.setBorderRight(BorderStyle.THIN);

		// 헤더생성
		row = sheet.createRow(rowNo++);
		cell = row.createCell(0);
		cell.setCellStyle(headStyle);
		cell.setCellValue("주문날짜");
		cell = row.createCell(1);
		cell.setCellStyle(headStyle);
		cell.setCellValue("대분류");
		cell = row.createCell(2);
		cell.setCellStyle(headStyle);
		cell.setCellValue("중분류");
		cell = row.createCell(3);
		cell.setCellStyle(headStyle);
		cell.setCellValue("소분류");
		cell = row.createCell(4);
		cell.setCellStyle(headStyle);
		cell.setCellValue("브랜드명");
		cell = row.createCell(5);
		cell.setCellStyle(headStyle);
		cell.setCellValue("상품명");
		cell = row.createCell(6);
		cell.setCellStyle(headStyle);
		cell.setCellValue("상품가격");
		cell = row.createCell(7);
		cell.setCellStyle(headStyle);
		cell.setCellValue("주문건수");
		cell = row.createCell(8);
		cell.setCellStyle(headStyle);
		cell.setCellValue("매출");

		// 데이터 부분 생성
		for (AdminSalesVO vo : list) {
			row = sheet.createRow(rowNo++);
			cell = row.createCell(0);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(vo.getDATE1());
			cell = row.createCell(1);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(vo.getCATEGORY_FIRST_NAME());
			cell = row.createCell(2);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(vo.getCATEGORY_SECOND_NAME());
			cell = row.createCell(3);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(vo.getCATEGORY_THIRD_NAME());
			cell = row.createCell(4);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(vo.getCATEGORY_GOODS_BRAND());
			cell = row.createCell(5);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(vo.getCATEGORY_GOODS_NAME());
			cell = row.createCell(6);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(vo.getORDER_GOODS_PRICE()+"원");
			cell = row.createCell(7);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(vo.getORDER_GOODS_COUNT()+"건");
			cell = row.createCell(8);
			cell.setCellStyle(bodyStyle);
			cell.setCellValue(vo.getPRICE()+"원");
		}

		// 컨텐츠 타입과 파일명 지정
		String filename = "상품별 매출현황.xls";
		FileOutputStream fileOut = null;
		response.setContentType("application/octet-stream;");
		response.setHeader("Content-Disposition",
				"attachment; filename=\"" + new String(filename.getBytes("UTF-8"), "8859_1") + "\"");
		response.setHeader("Pragma", "no-cache;");
		response.setHeader("Expires", "-1;");

		// 파일 저장
		try {
			fileOut = new FileOutputStream("월별.xls");
			wb.write(response.getOutputStream());
			wb.close();
			fileOut.flush();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (fileOut != null) {
				fileOut.close();
			}
		}
//		
//		response.getOutputStream().flush();
//		response.getOutputStream().close();
	}

}
