package com.java.ejb;

import java.sql.SQLException;
import java.util.List;

import javax.ejb.Remote;

@Remote
public interface AgentBeanRemote {
    List<Agent> showAgents() throws ClassNotFoundException, SQLException;
    Agent searchAgent(int agentID) throws ClassNotFoundException, SQLException;
    String addAgent(Agent agent) throws ClassNotFoundException, SQLException;
}
