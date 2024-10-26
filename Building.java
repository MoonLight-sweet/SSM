package com.property.management.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Building {
    private Community community;
    private Integer id;
    private String buildingNum;
    private String bname;
    private Integer roomNum;
    private String buildingDesc;
    private Date buildHiredate;
    private Integer cid;


}

