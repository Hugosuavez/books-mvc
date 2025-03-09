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
	<link rel="stylesheet" href="./css/styles.css" >
</head>
<body>
	<a href="./home">
	<button>Home</button>
	</a>
	<h1 class="title">Books</h1>
	<div class="book-list-container">
		<c:forEach items="${books}" var="b">
            <article class="book-card"> 
                <h3>${b.getTitle()}</h3>
                <p>by ${b.getAuthor()}</p>
                <p>Date published: ${b.getDate()}</p>
                <p>Genres: ${b.getGenres()}</p>
                <p>Characters: ${b.getCharacters()}</p>
                <p>Synopsis: ${b.getSynopsis()}</p>
                <p>-----------------------------------------------------------------------------</p>
            </article>
        </c:forEach>
	</div>
</body>
</html>