package com.java.ejb;

import java.sql.SQLException;
import java.util.List;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.naming.NamingException;

public class AgentEjbImpl {
    static AgentBeanRemote remote;

    static {
        try {
            remote = RemoteHelper.lookupRemoteStatelessEmploy();
        } catch (NamingException e) {
            e.printStackTrace();
        }
    }

    public String addAgentValid(Agent agent) throws ClassNotFoundException, SQLException {
        FacesContext context = FacesContext.getCurrentInstance();
        boolean isValid = true;

        if (agent.getAgentID() <= 0) {
            context.addMessage("empno", new FacesMessage(FacesMessage.SEVERITY_ERROR, "Agent ID Invalid", "Must be > 0"));
            isValid = false;
        }

        if (agent.getName() == null || agent.getName().length() < 5 || agent.getName().length() > 12) {
            context.addMessage("name", new FacesMessage(FacesMessage.SEVERITY_ERROR, "Name Invalid", "Length must be 5-12"));
            isValid = false;
        }

        if (agent.getPremium() < 10000 || agent.getPremium() > 99999) {
            context.addMessage("basic", new FacesMessage(FacesMessage.SEVERITY_ERROR, "Premium Invalid", "Must be 10000-99999"));
            isValid = false;
        }

        if (!isValid) return null;

        remote.addAgent(agent);
        return "AgentShow?faces-redirect=true";
    }

    public List<Agent> showAgentEjb() throws ClassNotFoundException, SQLException {
        return remote.showAgents();
    }

    public String searchAgentEjb(int agentID) throws ClassNotFoundException, SQLException {
        Agent agent = remote.searchAgent(agentID);
        FacesContext.getCurrentInstance().getExternalContext().getSessionMap().put("agentFound", agent);
        return "updateAgent?faces-redirect=true";
    }
}
