package com.WorldCup.pojo;

public class Team {
    private Integer tId;

    private String tName;

    private String tCoach;

    private String tInfo;

    private String tPic;

    public Integer gettId() {
        return tId;
    }

    public void settId(Integer tId) {
        this.tId = tId;
    }

    public String gettName() {
        return tName;
    }

    public void settName(String tName) {
        this.tName = tName == null ? null : tName.trim();
    }

    public String gettCoach() {
        return tCoach;
    }

    public void settCoach(String tCoach) {
        this.tCoach = tCoach == null ? null : tCoach.trim();
    }

    public String gettInfo() {
        return tInfo;
    }

    public void settInfo(String tInfo) {
        this.tInfo = tInfo == null ? null : tInfo.trim();
    }

    public String gettPic() {
        return tPic;
    }

    public void settPic(String tPic) {
        this.tPic = tPic == null ? null : tPic.trim();
    }
}