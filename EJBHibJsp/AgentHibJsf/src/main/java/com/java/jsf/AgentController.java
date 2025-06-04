package com.java.jsf;

import java.lang.reflect.Field;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import com.java.ejb.AgentEjbImpl;
import com.java.jsf.dao.AgentDao;
import com.java.jsf.model.Agent;

public class AgentController {

    private AgentDao agentDao;
    private Agent agent;
    private String sortField;
    private boolean ascending = true;
    private List<Agent> agentList;

    private com.java.ejb.Agent ejbAgent;
    private AgentEjbImpl agentEjbImpl;
    
    public String agentFound(int agentID) {
        return agentDao.searchAgentDao(agentID);
    }
    public String searchAgent(int agentID) {
        return agentDao.searchAgentDao(agentID);
    }


    public List<Agent> showAgents() {
        try {
			agentList = agentDao.showAgentDao();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        sortList(); 
        return agentList;
    }

    
    // Sort method to change sort field
    public void sortBy(String field) {
        if (field.equals(sortField)) {
            ascending = !ascending; //
        } else {
            sortField = field;
            ascending = true;
        }
        sortList();
    }

    private void sortList() {
        if (sortField == null || agentList == null) return;

        Collections.sort(agentList, (e1, e2) -> {
            try {
                Field f = Agent.class.getDeclaredField(sortField);
                f.setAccessible(true);
                Comparable v1 = (Comparable) f.get(e1);
                Comparable v2 = (Comparable) f.get(e2);
                return ascending ? v1.compareTo(v2) : v2.compareTo(v1);
            } catch (Exception ex) {
                return 0;
            }
        });
    }

    //  Getters and Setters
    public AgentDao getAgentDao() {
        return agentDao;
    }

    public void setAgentDao(AgentDao agentDao) {
        this.agentDao = agentDao;
    }

    public Agent getAgent() {
        return agent;
    }

    public void setAgent(Agent agent) {
        this.agent = agent;
    }

    public com.java.ejb.Agent getEjbAgent() {
        return ejbAgent;
    }

    public void setEjbAgent(com.java.ejb.Agent ejbAgent) {
        this.ejbAgent = ejbAgent;
    }

    public AgentEjbImpl getAgentEjbImpl() {
        return agentEjbImpl;
    }

    public void setAgentEjbImpl(AgentEjbImpl agentEjbImpl) {
        this.agentEjbImpl = agentEjbImpl;
    }

    public String getSortField() {
        return sortField;
    }

    public void setSortField(String sortField) {
        this.sortField = sortField;
    }

    public boolean isAscending() {
        return ascending;
    }

    public void setAscending(boolean ascending) {
        this.ascending = ascending;
    }

    public List<Agent> getAgentList() {
        return agentList;
    }

    public void setAgentList(List<Agent> agentList) {
        this.agentList = agentList;
    }
}
