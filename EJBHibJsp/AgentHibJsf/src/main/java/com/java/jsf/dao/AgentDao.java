package com.java.jsf.dao;

import java.sql.SQLException;
import java.util.List;
import com.java.jsf.model.Agent;

public interface AgentDao {
    List<Agent> showAgentDao() throws ClassNotFoundException, SQLException;
    String searchAgentDao(int agentID);
    String addAgent(Agent agent);
}
