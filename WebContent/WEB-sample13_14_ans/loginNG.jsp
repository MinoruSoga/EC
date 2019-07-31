<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%-- Java入門 ログインエラー画面 --%>
<!DOCTYPE html>
<html>
	<head>
		<title>Java入門</title>
		<link href="/schoo/WEB-sample13_14_ans/css/shopping.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

	</head>
	<body>
		<div class="container mt-5 text-center">
			<h1 class="my-4">ログインエラー</h1>
			<p >入力されたユーザは存在しません...</p>
			<form>
				<input class="common_button btn btn-dark mt-4" type="button" onclick="location.href='./WEB-sample13_14_ans/login.jsp'" value="戻る"/>
			</form>
		</div>

	</body>
</html>