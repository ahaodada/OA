package com.ch.www.domain;

public class TbJob {
    private Integer id;

    private String name;

    private String remanrk;
   
	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getRemanrk() {
        return remanrk;
    }

    public void setRemanrk(String remanrk) {
        this.remanrk = remanrk == null ? null : remanrk.trim();
    }
}