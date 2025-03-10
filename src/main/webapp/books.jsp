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
	<div class="book-list-container" id="book-container">
		<c:forEach items="${books}" var="b">
            <div class="book-card">
            <div class="book-cover">
                <h3 class="book-title">${b.title}</h3>
                <p class="book-author">${b.author}</p>
            </div>
            <div class="book-details">
                <p><strong>Published:</strong> ${b.date}</p>
                <p><strong>Genres:</strong> ${b.genres}</p>
                <p><strong>Characters:</strong> ${b.characters}</p>
                <p><strong>Synopsis:</strong> ${b.synopsis}</p>
            </div>
        </div>
            <a href="./deletebook?id=${b.id}">
            <button>Delete</button>
            </a>
             <a href="./updatebook?id=${b.id}">
            <button>Update</button>
            </a>
        </c:forEach>
	</div>
</body>
</html>