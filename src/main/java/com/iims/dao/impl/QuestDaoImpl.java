package com.iims.dao.impl;

import com.iims.dao.QuestDao;
import com.iims.database.ConnectionFactory;
import com.iims.model.Quest;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class QuestDaoImpl implements QuestDao {
    @Override
    public List<Quest> getRand10Quest() throws SQLException, ClassNotFoundException {
        final String sqlQuery = "SELECT * FROM questions ORDER BY RAND() LIMIT 10";
        Connection connection = ConnectionFactory.getConnection();
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sqlQuery);

        List<Quest> questions = new ArrayList<>();

        while (resultSet.next()){
            Quest question = new Quest();
            question.setId(resultSet.getInt("id"));
            question.setQuestion(resultSet.getString("question"));
            question.setOptA(resultSet.getString("optA"));
            question.setOptB(resultSet.getString("optB"));
            question.setOptC(resultSet.getString("optC"));
            question.setOptD(resultSet.getString("optD"));
            question.setCorrectAnswer(resultSet.getString("correctAnswer"));
            questions.add(question);
        }

        return questions;
    }
}
