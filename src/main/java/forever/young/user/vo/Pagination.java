package forever.young.user.vo;

public class Pagination {
	private int listSize=10;
	private int rangeSize=5;
	private int page;
	private int range;
	private int listCnt;
	private int pageCnt;
	private int startPage;
	private int startList;
	private int endPage;
	private boolean prev;
	private boolean next;
	private String user_id;
	
	private User_order_listVO User_order_listVO;
	
	public User_order_listVO getUser_order_listVO() {
		return User_order_listVO;
	}
	public void setUser_order_listVO(User_order_listVO user_order_listVO) {
		User_order_listVO = user_order_listVO;
	}
	public int getListSize() {
		return listSize;
	}
	public void setListSize(int listSize) {
		this.listSize = listSize;
	}
	public int getRangeSize() {
		return rangeSize;
	}
	public void setRangeSize(int rangeSize) {
		this.rangeSize = rangeSize;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getRange() {
		return range;
	}
	public void setRange(int range) {
		this.range = range;
	}
	public int getListCnt() {
		return listCnt;
	}
	public void setListCnt(int listCnt) {
		this.listCnt = listCnt;
	}
	public int getPageCnt() {
		return pageCnt;
	}
	public void setPageCnt(int pageCnt) {
		this.pageCnt = pageCnt;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getStartList() {
		return startList;
	}
	public void setStartList(int startList) {
		this.startList = startList;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	public void pageInfo(int page, int range, int listCnt) {
		this.page=page;
		this.range=range;
		this.listCnt=listCnt;
		
		this.pageCnt=(int)Math.ceil((double)listCnt/listSize);
		
		this.startPage=(range-1)*rangeSize+1;
		
		this.endPage=range*rangeSize;
		
		this.startList=(page-1)*listSize;
		
		this.prev=range==1?false:true;
		
		this.next=pageCnt>endPage?true:false;
		
		if(this.endPage>this.pageCnt) {
			this.endPage=this.pageCnt;
			this.next=false;
		}
	}
}
