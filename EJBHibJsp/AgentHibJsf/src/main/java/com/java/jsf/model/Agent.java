package com.java.jsf.model;

import com.java.ejb.Gender;

public class Agent {

	
	private int agentID; 
	  private String name ;
	  private String city ;
	  private Gender gender; 
	  private int maritalStatus;
	  private long premium ;
	

		  public int getAgentID() {
		return agentID;
	}
	public void setAgentID(int agentID) {
		this.agentID = agentID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public Gender getGender() {
		return gender;
	}
	public void setGender(Gender gender) {
		this.gender = gender;
	}
	public int getMaritalStatus() {
		return maritalStatus;
	}
	public void setMaritalStatus(int maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	public long getPremium() {
		return premium;
	}
	public void setPremium(long premium) {
		this.premium = premium;
	}
	public Agent() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Agent [agentID=" + agentID + ", name=" + name + ", city=" + city + ", gender=" + gender
				+ ", maritalStatus=" + maritalStatus + ", premium=" + premium + ", getAgentID()=" + getAgentID()
				+ ", getName()=" + getName() + ", getCity()=" + getCity() + ", getGender()=" + getGender()
				+ ", getMaritalStatus()=" + getMaritalStatus() + ", getPremium()=" + getPremium() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	public Agent(int agentID, String name, String city, Gender gender, int maritalStatus, long premium) {
		super();
		this.agentID = agentID;
		this.name = name;
		this.city = city;
		this.gender = gender;
		this.maritalStatus = maritalStatus;
		this.premium = premium;
	}
		
	
		  
		  
		  
	

	}


