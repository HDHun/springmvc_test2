package com.junefw.infra.modules.member;

public class MemberVo {
	// VO where 절에 들어가는 필드는 여기에
	private String ifmmSeq;
	private String ifmmName;
	private Integer ifmmDelNy;
	private Integer ifmmAdminNy;
	private String ifmmPassword;
	private Integer ifmmEmailConsentNy;
	private String ifmmSmsConsentNy;
	private String ifmmPushConsentNy;
	
	
	//search
	private String shIfmmDelNy;
	private String shIfmmUseNy;
	private String shIfmmName;
	private String shIfmmId;
	private String shIfmmSeq;
	private String shDateStart;
	private String shDateEnd;
	private Integer shOptionDate;
	


	//common
	private String shOption;
	private String shValue;
	
	//address
	private String ifmaSeq;
	private String ifmaDefaultNy;
	private String ifmaTypeCd;
	private String ifmaTitle;
	private String ifmaAddress1;
	private String ifmaZipcode;
	private String ifmaDelNy;
	
	//email
	private String ifmeSeq;
	private String ifmeDefaultNy;
	private String ifmeTypeCd;
	private String ifmeEmailFull;
	private String ifmeEmailAccount;
	private String ifmeEmailDomain;
	private String ifmeEmailDomainCd;
	private String ifmeEmailDelNy;
	
	//phone
	
	private String ifmpDefaulyNy;
	private String ifmpTypeCd;
	private String ifmpDeviceCd;
	private String ifmpTelecomCd;
	private String ifmpNumber;
	private String ifmpDelNy;
	private String ifmpSeq;
	
	




	//code
	private String ifcdSeq;
	private String ifcdName;
	private String ifcdUseNy;
	private String ifcdDelNy;
	
	
	//checkbox
	private String[] checkboxSeqArray;




	private int thisPage = 1;									// 현재 페이지
	private int rowNumToShow = 5;								// 화면에 보여줄 데이터 줄 갯수
	private int pageNumToShow = 5;								// 화면에 보여줄 페이징 번호 갯수

	private int totalRows;										// 전체 데이터 갯수
	private int totalPages;										// 전체 페이지 번호
	private int startPage;										// 시작 페이지 번호
	private int endPage;										// 마지막 페이지 번호
	
	private int startRnumForOracle = 1;							// 쿼리 시작 row
	private int endRnumForOracle;								// 쿼리 끝 row
	private Integer RNUM;
	
	

	private int startRnumForMysql = 0;							// 쿼리 시작 row
	
	
	//get/set
	public String getShIfmmId() {
		return shIfmmId;
	}
	public void setShIfmmId(String shIfmmId) {
		this.shIfmmId = shIfmmId;
	}
	public Integer getIfmmAdminNy() {
		return ifmmAdminNy;
	}
	public void setIfmmAdminNy(Integer ifmmAdminNy) {
		this.ifmmAdminNy = ifmmAdminNy;
	}
	public String getIfmmPassword() {
		return ifmmPassword;
	}
	public void setIfmmPassword(String ifmmPassword) {
		this.ifmmPassword = ifmmPassword;
	}
	public Integer getIfmmEmailConsentNy() {
		return ifmmEmailConsentNy;
	}
	public void setIfmmEmailConsentNy(Integer ifmmEmailConsentNy) {
		this.ifmmEmailConsentNy = ifmmEmailConsentNy;
	}
	public String getIfmmSmsConsentNy() {
		return ifmmSmsConsentNy;
	}
	public void setIfmmSmsConsentNy(String ifmmSmsConsentNy) {
		this.ifmmSmsConsentNy = ifmmSmsConsentNy;
	}
	public String getIfmmPushConsentNy() {
		return ifmmPushConsentNy;
	}
	public void setIfmmPushConsentNy(String ifmmPushConsentNy) {
		this.ifmmPushConsentNy = ifmmPushConsentNy;
	}
	public Integer getIfmmDelNy() {
		return ifmmDelNy;
	}
	public void setIfmmDelNy(Integer ifmmDelNy) {
		this.ifmmDelNy = ifmmDelNy;
	}
	public String getIfmmSeq() {
		return ifmmSeq;
	}
	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}
	public String getIfmmName() {
		return ifmmName;
	}
	public void setIfmmName(String ifmmName) {
		this.ifmmName = ifmmName;
	}
	
	// paging getter/setter
	public int getThisPage() {
		return thisPage;
	}
	public void setThisPage(int thisPage) {
		this.thisPage = thisPage;
	}
	public int getRowNumToShow() {
		return rowNumToShow;
	}
	public void setRowNumToShow(int rowNumToShow) {
		this.rowNumToShow = rowNumToShow;
	}
	public int getPageNumToShow() {
		return pageNumToShow;
	}
	public void setPageNumToShow(int pageNumToShow) {
		this.pageNumToShow = pageNumToShow;
	}
	public int getTotalRows() {
		return totalRows;
	}
	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}
	public int getTotalPages() {
		return totalPages;
	}
	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getStartRnumForOracle() {
		return startRnumForOracle;
	}
	public void setStartRnumForOracle(int startRnumForOracle) {
		this.startRnumForOracle = startRnumForOracle;
	}
	public int getEndRnumForOracle() {
		return endRnumForOracle;
	}
	public void setEndRnumForOracle(int endRnumForOracle) {
		this.endRnumForOracle = endRnumForOracle;
	}
	public Integer getRNUM() {
		return RNUM;
	}
	public void setRNUM(Integer rNUM) {
		RNUM = rNUM;
	}
	public int getStartRnumForMysql() {
		return startRnumForMysql;
	}
	public void setStartRnumForMysql(int startRnumForMysql) {
		this.startRnumForMysql = startRnumForMysql;
	}
	//search
	public String getShIfmmDelNy() {
		return shIfmmDelNy;
	}
	public void setShIfmmDelNy(String shIfmmDelNy) {
		this.shIfmmDelNy = shIfmmDelNy;
	}
	public String getShIfmmUseNy() {
		return shIfmmUseNy;
	}
	public void setShIfmmUseNy(String shIfmmUseNy) {
		this.shIfmmUseNy = shIfmmUseNy;
	}
	public String getShIfmmName() {
		return shIfmmName;
	}
	public void setShIfmmName(String shIfmmName) {
		this.shIfmmName = shIfmmName;
	}
	public String getShIfmmSeq() {
		return shIfmmSeq;
	}
	public void setShIfmmSeq(String shIfmmSeq) {
		this.shIfmmSeq = shIfmmSeq;
	}
	public String getShDateStart() {
		return shDateStart;
	}
	public void setShDateStart(String shDateStart) {
		this.shDateStart = shDateStart;
	}
	public String getShDateEnd() {
		return shDateEnd;
	}
	public void setShDateEnd(String shDateEnd) {
		this.shDateEnd = shDateEnd;
	}
	public Integer getShOptionDate() {
		return shOptionDate;
	}
	public void setShOptionDate(Integer shOptionDate) {
		this.shOptionDate = shOptionDate;
	}
	
	
	public String getShOption() {
		return shOption;
	}
	public void setShOption(String shOption) {
		this.shOption = shOption;
	}
	public String getShValue() {
		return shValue;
	}
	public void setShValue(String shValue) {
		this.shValue = shValue;
	}
	
	public String getIfmaSeq() {
		return ifmaSeq;
	}
	public void setIfmaSeq(String ifmaSeq) {
		this.ifmaSeq = ifmaSeq;
	}
	public String getIfmaDefaultNy() {
		return ifmaDefaultNy;
	}
	public void setIfmaDefaultNy(String ifmaDefaultNy) {
		this.ifmaDefaultNy = ifmaDefaultNy;
	}
	public String getIfmaTypeCd() {
		return ifmaTypeCd;
	}
	public void setIfmaTypeCd(String ifmaTypeCd) {
		this.ifmaTypeCd = ifmaTypeCd;
	}
	public String getIfmaTitle() {
		return ifmaTitle;
	}
	public void setIfmaTitle(String ifmaTitle) {
		this.ifmaTitle = ifmaTitle;
	}
	public String getIfmaAddress1() {
		return ifmaAddress1;
	}
	public void setIfmaAddress1(String ifmaAddress1) {
		this.ifmaAddress1 = ifmaAddress1;
	}
	public String getIfmaZipcode() {
		return ifmaZipcode;
	}
	public void setIfmaZipcode(String ifmaZipcode) {
		this.ifmaZipcode = ifmaZipcode;
	}
	public String getIfmaDelNy() {
		return ifmaDelNy;
	}
	public void setIfmaDelNy(String ifmaDelNy) {
		this.ifmaDelNy = ifmaDelNy;
	}
	public String getIfmeSeq() {
		return ifmeSeq;
	}
	public void setIfmeSeq(String ifmeSeq) {
		this.ifmeSeq = ifmeSeq;
	}
	public String getIfmeDefaultNy() {
		return ifmeDefaultNy;
	}
	public void setIfmeDefaultNy(String ifmeDefaultNy) {
		this.ifmeDefaultNy = ifmeDefaultNy;
	}
	public String getIfmeTypeCd() {
		return ifmeTypeCd;
	}
	public void setIfmeTypeCd(String ifmeTypeCd) {
		this.ifmeTypeCd = ifmeTypeCd;
	}
	public String getIfmeEmailFull() {
		return ifmeEmailFull;
	}
	public void setIfmeEmailFull(String ifmeEmailFull) {
		this.ifmeEmailFull = ifmeEmailFull;
	}
	public String getIfmeEmailAccount() {
		return ifmeEmailAccount;
	}
	public void setIfmeEmailAccount(String ifmeEmailAccount) {
		this.ifmeEmailAccount = ifmeEmailAccount;
	}
	public String getIfmeEmailDomain() {
		return ifmeEmailDomain;
	}
	public void setIfmeEmailDomain(String ifmeEmailDomain) {
		this.ifmeEmailDomain = ifmeEmailDomain;
	}
	public String getIfmeEmailDomainCd() {
		return ifmeEmailDomainCd;
	}
	public void setIfmeEmailDomainCd(String ifmeEmailDomainCd) {
		this.ifmeEmailDomainCd = ifmeEmailDomainCd;
	}
	public String getIfmeEmailDelNy() {
		return ifmeEmailDelNy;
	}
	public void setIfmeEmailDelNy(String ifmeEmailDelNy) {
		this.ifmeEmailDelNy = ifmeEmailDelNy;
	}
	public String getIfmpDefaulyNy() {
		return ifmpDefaulyNy;
	}
	public void setIfmpDefaulyNy(String ifmpDefaulyNy) {
		this.ifmpDefaulyNy = ifmpDefaulyNy;
	}
	public String getIfmpTypeCd() {
		return ifmpTypeCd;
	}
	public void setIfmpTypeCd(String ifmpTypeCd) {
		this.ifmpTypeCd = ifmpTypeCd;
	}
	public String getIfmpSeq() {
		return ifmpSeq;
	}
	public void setIfmpSeq(String ifmpSeq) {
		this.ifmpSeq = ifmpSeq;
	}
	public String getIfmpDeviceCd() {
		return ifmpDeviceCd;
	}
	public void setIfmpDeviceCd(String ifmpDeviceCd) {
		this.ifmpDeviceCd = ifmpDeviceCd;
	}
	public String getIfmpTelecomCd() {
		return ifmpTelecomCd;
	}
	public void setIfmpTelecomCd(String ifmpTelecomCd) {
		this.ifmpTelecomCd = ifmpTelecomCd;
	}
	public String getIfmpNumber() {
		return ifmpNumber;
	}
	public void setIfmpNumber(String ifmpNumber) {
		this.ifmpNumber = ifmpNumber;
	}
	public String getIfmpDelNy() {
		return ifmpDelNy;
	}
	public void setIfmpDelNy(String ifmpDelNy) {
		this.ifmpDelNy = ifmpDelNy;
	}
	public String getIfcdSeq() {
		return ifcdSeq;
	}
	public void setIfcdSeq(String ifcdSeq) {
		this.ifcdSeq = ifcdSeq;
	}
	public String getIfcdName() {
		return ifcdName;
	}
	public void setIfcdName(String ifcdName) {
		this.ifcdName = ifcdName;
	}
	public String getIfcdUseNy() {
		return ifcdUseNy;
	}
	public void setIfcdUseNy(String ifcdUseNy) {
		this.ifcdUseNy = ifcdUseNy;
	}
	public String getIfcdDelNy() {
		return ifcdDelNy;
	}
	public void setIfcdDelNy(String ifcdDelNy) {
		this.ifcdDelNy = ifcdDelNy;
	}
	//checkbox

	public String[] getCheckboxSeqArray() {
		return checkboxSeqArray;
	}
	public void setCheckboxSeqArray(String[] checkboxSeqArray) {
		this.checkboxSeqArray = checkboxSeqArray;
	}
	
	
	
	
	// ---- paging
		public void setParamsPaging(int totalRowsParam) {
			
			totalRows = totalRowsParam;

			totalPages = totalRows / rowNumToShow;

			if (totalRows % rowNumToShow > 0) {
				totalPages = totalPages+ 1;
			}

			if (totalPages < thisPage) {
				thisPage = totalPages;
			}
			
			startPage = (((thisPage - 1) / pageNumToShow) * pageNumToShow + 1);

			endPage = (startPage + pageNumToShow - 1);

			if (endPage > totalPages) {
				endPage = (totalPages);
			}
			
			endRnumForOracle = ((rowNumToShow * thisPage));
			startRnumForOracle = ((endRnumForOracle - rowNumToShow) + 1);
			if (startRnumForOracle < 1) startRnumForOracle = 1;
			
			
			if (thisPage == 1) {
				startRnumForMysql = 0;
			} else {
				startRnumForMysql = ((rowNumToShow * (thisPage-1)));
			}
			
			System.out.println("getThisPage():" + thisPage);
			System.out.println("getTotalRows():" + totalRows);
			System.out.println("getRowNumToShow():" + rowNumToShow);
			System.out.println("getTotalPages():" + totalPages);
			System.out.println("getStartPage():" + startPage);
			System.out.println("getEndPage():" + endPage);		
			System.out.println("getStartRnumForOracle():" + startRnumForOracle);
			System.out.println("getEndRnumForOracle():" + endRnumForOracle);
			System.out.println("getStartRnumForMysql(): " + startRnumForMysql);
			
		}
		
		
		
	
	
	
	
	
	
	
	
}