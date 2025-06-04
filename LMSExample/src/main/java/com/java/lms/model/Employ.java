package com.java.lms.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;



@ToString
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Employ {
	private int empId;
	private String empName;
	private String empMail;
	private long empMobno;
	private Date empJoinDate;
	private String empDept;
	private int empMgrId;
	private int empLeaveBal;
}
