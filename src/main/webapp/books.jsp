<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="models.Book" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Books</title>
</head>
<body>
	<h1>Books</h1>
<table border="1">
    <thead>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Author</th>
            <th>Date</th>
            <th>Genres</th>
            <th>Characters</th>
            <th>Synopsis</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${books}" var="b">
            <tr>
                <td>${b.getId()}</td>
                <td>${b.getTitle()}</td>
                <td>${b.getAuthor()}</td>
                <td>${b.getDate()}</td>
                <td>${b.getGenres()}</td>
                <td>${b.getCharacters()}</td>
                <td>${b.getSynopsis()}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>