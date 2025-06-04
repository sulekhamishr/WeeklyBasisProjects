package com.java.ejb;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AgentDaoImpl implements AgentDao {

    @Override
    public List<Agent> showAgents() throws ClassNotFoundException, SQLException {
        List<Agent> agentList = new ArrayList<>();
        try (Connection conn = ConnectionHelper.getConnection()) {
            String query = "SELECT * FROM agent";
            try (PreparedStatement ps = conn.prepareStatement(query);
                 ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Agent agent = new Agent(
                        rs.getInt("agentID"),
                        rs.getString("name"),
                        rs.getString("city"),
                        Gender.valueOf(rs.getString("gender").toUpperCase()), // ensure enum parsing is safe
                        rs.getInt("maritalStatus"),
                        rs.getLong("premium")
                    );
                    agentList.add(agent);
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            throw e; 
        }
        return agentList;
    }

    @Override
    public String addAgent(Agent agent) throws ClassNotFoundException, SQLException {
        String query = "INSERT INTO agent (agentID, name, city, gender, maritalStatus, premium) VALUES (?, ?, ?, ?, ?, ?)";
        try (Connection conn = ConnectionHelper.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, agent.getAgentID());
            ps.setString(2, agent.getName());
            ps.setString(3, agent.getCity());
            ps.setString(4, agent.getGender().toString());
            ps.setInt(5, agent.getMaritalStatus());
            ps.setLong(6, agent.getPremium());

            int result = ps.executeUpdate();
            return result > 0 ? "Agent added successfully" : "Failed to add agent";
        }
    }

    @Override
    public Agent searchAgent(int agentId) throws ClassNotFoundException, SQLException {
        String query = "SELECT * FROM agent WHERE agentID = ?";
        try (Connection conn = ConnectionHelper.getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {
            ps.setInt(1, agentId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return new Agent(
                        rs.getInt("agentID"),
                        rs.getString("name"),
                        rs.getString("city"),
                        Gender.valueOf(rs.getString("gender").toUpperCase()),
                        rs.getInt("maritalStatus"),
                        rs.getLong("premium")
                    );
                }
            }
        }
        return null;
    }
}
