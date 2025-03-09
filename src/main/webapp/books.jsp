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
	<link rel="stylesheet" href="css/styles.css" >
</head>
<body>
<a href="./">
<button>Home</button>
</a>
	<h1 class="title">Books</h1>
        <c:forEach items="${books}" var="b">
            <article> 
                <h3>${b.getTitle()}</h3>
                <p>by ${b.getAuthor()}</p>
            	<p>${b.getId()}</p>
                <p>${b.getDate()}</p>
                <p>${b.getGenres()}</p>
                <p>${b.getCharacters()}</p>
                <p>${b.getSynopsis()}</p>
                <p>-----------------------------------------------------------------------------</p>
            </article>
        </c:forEach>
</body>
</html>