<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<link href="./css/styles.css" rel="stylesheet" >
	<meta charset="UTF-8">
	<title>Bookshelf</title>
</head>
<body>
<h1>Welcome to your book shelf!</h1>
<input type=text placeholder="Search by title or author" />
<select name="genre" id="genre">
	<option value="horror">Horror</option>
	<option value="adventure">Adventure</option>
</select>
<a href="./books">
<button class="button">Browse All Books</button>
</a>
<br/>
<a href="./addbook">
<button>Add Book</button>
</a>
</body>
</html>