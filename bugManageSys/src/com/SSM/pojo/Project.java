package com.SSM.pojo;


public class Project {
    private int pro_id;
    private String wordkey;
    private String name;
    private String description;
    private String date;

    public int getPro_id() {
        return pro_id;
    }

    public void setPro_id(int pro_id) {
        this.pro_id = pro_id;
    }



    public String getName() {
        return name;
    }

    public String getWordkey() {
        return wordkey;
    }

    public void setWordkey(String wordkey) {
        this.wordkey = wordkey;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getManager() {
        return manager;
    }

    public void setManager(String manager) {
        this.manager = manager;
    }

    private String manager;


}
