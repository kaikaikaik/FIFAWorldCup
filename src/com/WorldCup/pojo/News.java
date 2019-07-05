package com.WorldCup.pojo;

import java.math.BigDecimal;

public class News {
    private BigDecimal nid;

    private String ntime;

    private String ninfo;

    private String ntitle;

    private BigDecimal thump;

    private String npic;

    public BigDecimal getNid() {
        return nid;
    }

    public void setNid(BigDecimal nid) {
        this.nid = nid;
    }

    public String getNtime() {
        return ntime;
    }

    public void setNtime(String ntime) {
        this.ntime = ntime == null ? null : ntime.trim();
    }

    public String getNinfo() {
        return ninfo;
    }

    public void setNinfo(String ninfo) {
        this.ninfo = ninfo == null ? null : ninfo.trim();
    }

    public String getNtitle() {
        return ntitle;
    }

    public void setNtitle(String ntitle) {
        this.ntitle = ntitle == null ? null : ntitle.trim();
    }

    public BigDecimal getThump() {
        return thump;
    }

    public void setThump(BigDecimal thump) {
        this.thump = thump;
    }

    public String getNpic() {
        return npic;
    }

    public void setNpic(String npic) {
        this.npic = npic == null ? null : npic.trim();
    }
}