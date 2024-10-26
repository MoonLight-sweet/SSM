package com.property.management.entity;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;


public class RespBean {
    private Integer status;
    private String info;
    private Object data;

    @Override
    public String toString() {
        try {
            return new ObjectMapper().writeValueAsString(this);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return "";
    }

    public static RespBean ok(String info, Object data) {
        return new RespBean(200, info, data);
    }


    public static RespBean ok(String info) {
        return new RespBean(200, info, null);
    }

    public static RespBean error(String info, Object data) {
        return new RespBean(500, info, data);
    }


    public static RespBean error(String info) {
        return new RespBean(500, info, null);
    }

    private RespBean() {
    }

    private RespBean(Integer status, String info, Object data) {
        this.status = status;
        this.info = info;
        this.data = data;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
