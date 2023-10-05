<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Addition Quiz</title>
</head>
<body>
    <h1>Addition Quiz</h1>
    
    <form action="quiz_result.jsp" method="post">
        <% 
            int numQuestions = 5; // Number of quiz questions
            int score = 0; // Initialize the user's score
            
            // Generate random addition questions and display them
            for (int i = 1; i <= numQuestions; i++) {
                int num1 = (int) (Math.random() * 10);
                int num2 = (int) (Math.random() * 10);
                int correctAnswer = num1 + num2;
        %>
        <p>Question <%= i %>: What is <%= num1 %> + <%= num2 %>?</p>
        <input type="text" name="answer<%= i %>" required>
        <input type="hidden" name="correctAnswer<%= i %>" value="<%= correctAnswer %>">
        <br>
        <%
            }
        %>
        <br>
        <input type="submit" value="Submit Answers">
    </form>
</body>
</html>
