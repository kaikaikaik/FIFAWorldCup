package com.WorldCup.pojo;

public class Player {
    private Integer pId;

    private String pName;

    private String pTname;

    private String pNumber;

    private String pBirth;

    private String pHeight;

    private String pWeight;

    private String pPosition;

    private Long pLike;

    private String pPic;

    public Integer getpId() {
		return pId;
	}

	public void setpId(Integer pId) {
		this.pId = pId;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}


	public String getpTname() {
		return pTname;
	}

	public void setpTname(String pTname) {
		this.pTname = pTname;
	}

	public String getpNumber() {
		return pNumber;
	}

	public void setpNumber(String pNumber) {
		this.pNumber = pNumber;
	}

	public String getpBirth() {
		return pBirth;
	}

	public void setpBirth(String pBirth) {
		this.pBirth = pBirth;
	}

	public String getpHeight() {
		return pHeight;
	}

	public void setpHeight(String pHeight) {
		this.pHeight = pHeight;
	}

	public String getpWeight() {
		return pWeight;
	}

	public void setpWeight(String pWeight) {
		this.pWeight = pWeight;
	}

	public String getpPosition() {
		return pPosition;
	}

	public void setpPosition(String pPosition) {
		this.pPosition = pPosition;
	}

	public Long getpLike() {
		return pLike;
	}

	public void setpLike(Long pLike) {
		this.pLike = pLike;
	}

	public String getpPic() {
        return pPic;
    }

    public void setpPic(String pPic) {
        this.pPic = pPic == null ? null : pPic.trim();
    }
}