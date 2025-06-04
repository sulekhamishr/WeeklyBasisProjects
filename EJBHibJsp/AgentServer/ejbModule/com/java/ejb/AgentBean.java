package com.java.ejb;

import java.sql.SQLException;
import java.util.List;

import javax.ejb.Remote;
import javax.ejb.Stateless;

@Stateless
@Remote(AgentBeanRemote.class)
public class AgentBean implements AgentBeanRemote {

    private AgentDao agentDao = new AgentDaoImpl();

    @Override
    public List<Agent> showAgents() throws ClassNotFoundException, SQLException {
        return agentDao.showAgents();
    }

    @Override
    public Agent searchAgent(int agentId) throws ClassNotFoundException, SQLException {
        return agentDao.searchAgent(agentId);
    }

    @Override
    public String addAgent(Agent agent) throws ClassNotFoundException, SQLException {
        return agentDao.addAgent(agent);
    }
}
