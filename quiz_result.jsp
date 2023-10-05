<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quiz Result</title>
</head>
<body>
    <h1>Quiz Result</h1>
    
    <% 
        int numQuestions = 5; // Number of quiz questions
        int score = 0; // Initialize the user's score
        
        // Check user's answers and calculate the score
        for (int i = 1; i <= numQuestions; i++) {
            int userAnswer = Integer.parseInt(request.getParameter("answer" + i));
            int correctAnswer = Integer.parseInt(request.getParameter("correctAnswer" + i));
            if (userAnswer == correctAnswer) {
                score++;
            }
        }
    %>
    
    <p>Your score: <%= score %> out of <%= numQuestions %></p>
    
    <h2>Answers:</h2>
    <ul>
        <%
            for (int i = 1; i <= numQuestions; i++) {
                int correctAnswer = Integer.parseInt(request.getParameter("correctAnswer" + i));
        %>
        <li>Question <%= i %>: <%= correctAnswer %></li>
        <%
            }
        %>
    </ul>
</body>
</html>
