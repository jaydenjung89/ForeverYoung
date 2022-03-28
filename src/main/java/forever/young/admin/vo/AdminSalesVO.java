package forever.young.admin.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class AdminSalesVO {
	
	private Date DATE;
	private String CATEGORY_FIRST_NAME;
	private String CATEGORY_SECOND_NAME;
	private String CATEGORY_THIRD_NAME;
	private String CATEGORY_GOODS_SERIAL;
	private String CATEGORY_GOODS_BRAND;
	private String CATEGORY_GOODS_NAME;
	private int GOODS_DETAIL_PRICE;
	private int ORDER_GOODS_PRICE;
	private int ORDER_GOODS_COUNT;
	private int PRICE;
	private String PRICE1;
	private String MONTH1;
	private String DATE1;
	private String ORDER_DELIVERY_STATUS;
	private String START;
	private String END;
	
	public Date getDATE() {
		return DATE;
	}
	public void setDATE(Date dATE) {
		DATE = dATE;
	}
	public String getCATEGORY_FIRST_NAME() {
		return CATEGORY_FIRST_NAME;
	}
	public void setCATEGORY_FIRST_NAME(String cATEGORY_FIRST_NAME) {
		CATEGORY_FIRST_NAME = cATEGORY_FIRST_NAME;
	}
	public String getCATEGORY_SECOND_NAME() {
		return CATEGORY_SECOND_NAME;
	}
	public void setCATEGORY_SECOND_NAME(String cATEGORY_SECOND_NAME) {
		CATEGORY_SECOND_NAME = cATEGORY_SECOND_NAME;
	}
	public String getCATEGORY_THIRD_NAME() {
		return CATEGORY_THIRD_NAME;
	}
	public void setCATEGORY_THIRD_NAME(String cATEGORY_THIRD_NAME) {
		CATEGORY_THIRD_NAME = cATEGORY_THIRD_NAME;
	}
	public String getCATEGORY_GOODS_SERIAL() {
		return CATEGORY_GOODS_SERIAL;
	}
	public void setCATEGORY_GOODS_SERIAL(String cATEGORY_GOODS_SERIAL) {
		CATEGORY_GOODS_SERIAL = cATEGORY_GOODS_SERIAL;
	}
	public String getCATEGORY_GOODS_BRAND() {
		return CATEGORY_GOODS_BRAND;
	}
	public void setCATEGORY_GOODS_BRAND(String cATEGORY_GOODS_BRAND) {
		CATEGORY_GOODS_BRAND = cATEGORY_GOODS_BRAND;
	}
	public String getCATEGORY_GOODS_NAME() {
		return CATEGORY_GOODS_NAME;
	}
	public void setCATEGORY_GOODS_NAME(String cATEGORY_GOODS_NAME) {
		CATEGORY_GOODS_NAME = cATEGORY_GOODS_NAME;
	}
	public int getGOODS_DETAIL_PRICE() {
		return GOODS_DETAIL_PRICE;
	}
	public void setGOODS_DETAIL_PRICE(int gOODS_DETAIL_PRICE) {
		GOODS_DETAIL_PRICE = gOODS_DETAIL_PRICE;
	}
	public int getORDER_GOODS_COUNT() {
		return ORDER_GOODS_COUNT;
	}
	public void setORDER_GOODS_COUNT(int oRDER_GOODS_COUNT) {
		ORDER_GOODS_COUNT = oRDER_GOODS_COUNT;
	}
	public int getPRICE() {
		return PRICE;
	}
	public void setPRICE(int pRICE) {
		PRICE = pRICE;
	}
	public String getORDER_DELIVERY_STATUS() {
		return ORDER_DELIVERY_STATUS;
	}
	public void setORDER_DELIVERY_STATUS(String oRDER_DELIVERY_STATUS) {
		ORDER_DELIVERY_STATUS = oRDER_DELIVERY_STATUS;
	}
	public String getSTART() {
		return START;
	}
	public void setSTART(String sTART) {
		START = sTART;
	}
	public String getEND() {
		return END;
	}
	public void setEND(String eND) {
		END = eND;
	}
	
	public String getMONTH1() {
		return MONTH1;
	}
	public void setMONTH(String mONTH) {
		MONTH1 = mONTH;
	}
	public int get(String string) {
		// TODO Auto-generated method stub
		return 0;
	}	
	public String getDATE1() {
		return DATE1;
	}
	public void setDATE1(String dATE1) {
		DATE1 = dATE1;
	}
	public void setMONTH1(String mONTH1) {
		MONTH1 = mONTH1;
	}
	public int getORDER_GOODS_PRICE() {
		return ORDER_GOODS_PRICE;
	}
	public void setORDER_GOODS_PRICE(int oRDER_GOODS_PRICE) {
		ORDER_GOODS_PRICE = oRDER_GOODS_PRICE;
	}
	public String getPRICE1() {
		return PRICE1;
	}
	public void setPRICE1(String pRICE1) {
		PRICE1 = pRICE1;
	}
	@Override
	public String toString() {
		return "AdminSalesVO [DATE=" + DATE + ", CATEGORY_FIRST_NAME=" + CATEGORY_FIRST_NAME + ", CATEGORY_SECOND_NAME="
				+ CATEGORY_SECOND_NAME + ", CATEGORY_THIRD_NAME=" + CATEGORY_THIRD_NAME + ", CATEGORY_GOODS_SERIAL="
				+ CATEGORY_GOODS_SERIAL + ", CATEGORY_GOODS_BRAND=" + CATEGORY_GOODS_BRAND + ", CATEGORY_GOODS_NAME="
				+ CATEGORY_GOODS_NAME + ", GOODS_DETAIL_PRICE=" + GOODS_DETAIL_PRICE + ", ORDER_GOODS_PRICE="
				+ ORDER_GOODS_PRICE + ", ORDER_GOODS_COUNT=" + ORDER_GOODS_COUNT + ", PRICE=" + PRICE + ", PRICE1="
				+ PRICE1 + ", MONTH1=" + MONTH1 + ", DATE1=" + DATE1 + ", ORDER_DELIVERY_STATUS="
				+ ORDER_DELIVERY_STATUS + ", START=" + START + ", END=" + END + "]";
	}
	
	
}
