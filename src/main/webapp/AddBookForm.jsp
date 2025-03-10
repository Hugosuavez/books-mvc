<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="./css/styles.css">
	<title>Add Book</title>
</head>
<body>
	<form method="post" action="./addbook">
		<fieldset class="addbookform">
		<legend>Add book details</legend>
		<label for="title">Title: </label>
		<input type="text" name="title" id="title"/>
		<label for="author">Author: </label>
		<input type="text" name="author" id="author"/>
		<label for="date">Date: </label>
		<input type="text" name="date" id="date"/>
		<label for="genres">Genres: </label>
		<input type="text" name="genres" id="genres"/>
		<label for="characters">Characters: </label>
		<input type="text" name="characters" id="characters"/>
		<label for="synopsis">Synopsis: </label>
		<input type="text" name="synopsis" id="synopsis"/>
		<button>Submit</button>
		<c:if test="${not empty param.error}">
			<p style="color: red;">${param.error}</p>
		</c:if>
		</fieldset>
	</form>
</body>
</html>