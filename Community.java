package com.property.management.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@NoArgsConstructor
@Builder
@Data
@AllArgsConstructor

//(DbCommunity)实体类
public class Community {
    private Integer id;
    private String communityNum;
    private String name;
    private String address;
    private Double communityArea;
    private Integer buildingNum;
    private Integer roomNum;
    private String img;
    private Double greeningRate;
    private String developerName;
    private String propertyName;
    private Date hiredate;
    private Integer state;
    private Integer uid;

}
