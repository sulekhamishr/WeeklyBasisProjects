package com.java.ejb;

import java.sql.SQLException;
import java.util.List;

public interface AgentDao {
    List<Agent> showAgents() throws ClassNotFoundException, SQLException;
    String addAgent(Agent agent) throws ClassNotFoundException, SQLException;
    Agent searchAgent(int agentId) throws ClassNotFoundException, SQLException;
}
