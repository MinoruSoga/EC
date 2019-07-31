<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%-- Java入門 購入結果画面 --%>
<!DOCTYPE html>
<html>
	<head>
		<title>購入完了</title>
		<link href="/schoo/WEB-sample13_14_ans/css/shopping.css" rel="stylesheet" type="text/css" />
	</head>
	<body>
		<jsp:include page="header.jsp"/>
			<div class="container text-center">
				<h1 class="display-1 my-5">Completed</h1>
				<!-- <p>購入完了<img src="/schoo/WEB-sample13_14_ans/img/Thankyou.jpg" width="100" height="100"/></p> -->
				<form action="./ShoppingServlet_ans" method="post">
					<input class="btn btn-info mt-5" type="submit" value="一覧に戻る">
				</form>
			</div>

	</body>
</html>