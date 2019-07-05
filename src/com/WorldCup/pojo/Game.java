package com.WorldCup.pojo;



public class Game {
    private Integer gId;

    private String gName;

    private Integer gGoal;

    private Integer gPoint;

    private Integer gRanking;



    private String gHeader;

    public Integer getgId() {
        return gId;
    }

    public void setgId(Integer gId) {
        this.gId = gId;
    }

    public String getgName() {
        return gName;
    }

    public void setgName(String gName) {
        this.gName = gName == null ? null : gName.trim();
    }

    public Integer getgGoal() {
        return gGoal;
    }

    public void setgGoal(Integer gGoal) {
        this.gGoal = gGoal;
    }

    public Integer getgPoint() {
        return gPoint;
    }

    public void setgPoint(Integer gPoint) {
        this.gPoint = gPoint;
    }

    public Integer getgRanking() {
        return gRanking;
    }

    public void setgRanking(Integer gRanking) {
        this.gRanking = gRanking;
    }



    public String getgHeader() {
        return gHeader;
    }

    public void setgHeader(String gHeader) {
        this.gHeader = gHeader == null ? null : gHeader.trim();
    }
}