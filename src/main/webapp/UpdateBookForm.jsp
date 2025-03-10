<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/styles.css">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="./updatebook">
		<fieldset class="addbookform">
		<legend>Add book details</legend>
		<input type="hidden" name="id" value="${book.id}">
		<label for="title">Title: </label>
		<input type="text" name="title" id="title" value="${book.title}"/>
		<label for="author">Author: </label>
		<input type="text" name="author" id="author" value="${book.author}"/>
		<label for="date">Date: </label>
		<input type="text" name="date" id="date" value="${book.date}"/>
		<label for="genres">Genres: </label>
		<input type="text" name="genres" id="genres"  value="${book.genres}"/>
		<label for="characters">Characters: </label>
		<input type="text" name="characters" id="characters"  value="${book.characters}"/>
		<label for="synopsis">Synopsis: </label>
		<textarea name="synopsis" id="synopsis" >${book.synopsis}</textarea>
		<button>Submit</button>
		<c:if test="${not empty param.error}">
			<p style="color: red;">${param.error}</p>
		</c:if>
		</fieldset>
	</form>
</body>
</html>