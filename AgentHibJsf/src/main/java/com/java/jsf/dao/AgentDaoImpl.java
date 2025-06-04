package com.java.jsf.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.faces.context.FacesContext;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.java.jsf.model.Agent;
import com.java.jsf.util.SessionHelper;

public class AgentDaoImpl implements AgentDao {

    SessionFactory sessionFactory;
    Session session;

    @Override
    public List<Agent> showAgentDao() throws ClassNotFoundException, SQLException {
        sessionFactory = SessionHelper.getConnection();
        session = sessionFactory.openSession();
        Query query = session.getNamedQuery("showAgents");
        List<Agent> agentList = query.list();
        session.close();
        return agentList;
    }

    @Override
    public String searchAgentDao(int agentID) {
        Map<String, Object> sessionMap = FacesContext.getCurrentInstance()
                .getExternalContext().getSessionMap();

        sessionFactory = SessionHelper.getConnection();
        session = sessionFactory.openSession();

        Query query = session.getNamedQuery("searchAgent");
        query.setParameter("agentID", agentID);  
        Agent agent = (Agent) query.uniqueResult();

        session.close();

        if (agent != null) {
            sessionMap.put("agentFound", agent);
            return "searchAgent.xhtml?faces-redirect=true";
        } else {
            return "agentNotFound.xhtml?faces-redirect=true";
        }
    }

    @Override
    public String addAgent(Agent agent) {
        sessionFactory = SessionHelper.getConnection();
        session = sessionFactory.openSession();
        Transaction trans = session.beginTransaction();

        try {
            session.save(agent);
            trans.commit();
            return "Agent added successfully";
        } catch (Exception e) {
            trans.rollback();
            e.printStackTrace();
            return "Error while adding agent";
        } finally {
            session.close();
        }
    }
}
