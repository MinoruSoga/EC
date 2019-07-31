<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<jsp:useBean id="user_db" scope="session" class="websample13_14_ans.LoginUserBean" />

<%-- Java入門 ログイン画面 --%>
<!DOCTYPE html>
<html>
	<head>
		<title>Login</title>
		<!-- <link href="/schoo/WEB-sample13_14_ans/css/shopping.css" rel="stylesheet" type="text/css" /> -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
  <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">

	</head>
	<body>

		<div class="jumbotron">
			  <h1 class="display-4 mt-5">Nile.com</h1>
			  <p class="lead">Enter ID & PASS</p>
			  <hr class="my-4">
			  <p>
			  	<form action="../LoginServletShopping_ans" method="post">
					<div class="form-group"> <!-- left unspecified, .bmd-form-group will be automatically added (inspect the code) -->
						<label for="formGroupExampleInput" class="bmd-label-floating" >ID</label>
						<input type="text" name="id" value="<%=user_db.getId()%>" class="form-control" id="formGroupExampleInput">
					</div>
					<div class="form-group bmd-form-group"> <!-- manually specified -->
						<label for="formGroupExampleInput2" class="bmd-label-floating">PASSWORD</label>
					    <input type="password"  name="pass" class="form-control" id="formGroupExampleInput2">
					</div>
					  <p class="lead">
						  <input class="btn btn-primary btn-lg float-right" role="button" name="submit" type="submit"value="ログイン">
								<% if("login".equals(session.getAttribute("login_db"))) { %>
									<input class="btn btn-primary btn-lg float-right" role="button" name="submit" type="submit"	value="ログアウト">
								<% } %>
					  </p>
				</form>
		</div>

<%--
		<div class="login_pane container text-center">
			<h1 class=" mt-5">Nile.com</h1>
			<p>ログインIDとパスワードを入力して下さい</p>
			<form action="../LoginServletShopping_ans" method="post">
			  <div class="form-group row">
				    <label class="col-sm-2 col-form-label">ID</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control-plaintext" name="id" value="<%=user_db.getId()%>">
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
				    <div class="col-sm-10">
				      <input type="password" class="form-control" id="inputPassword" name="pass" placeholder="Password">
				    </div>
				  </div>
				  <input class="common_button btn btn-primary p-1 m-1" type="submit" name="submit"  value="ログイン"/>
				ログイン済みの場合はログアウトボタンを表示
				<% if("login".equals(session.getAttribute("login_db"))) { %>
					<input class="common_button btn-danger p-1 m-1" type="submit" name="submit" value="ログアウト"/>
				<% } %>
				</form> --%>
			<%-- <form action="../LoginServletShopping_ans" method="post">
				<table class="table_form text-center">
					<tbody>
						<tr>
							ログイン済みの場合はIDを表示
							<th>ログインID</th>
							<td><input type="text" name="id" value="<%=user_db.getId()%>" class="form-control"/></td>
						</tr>
						<tr>
							<th>パスワード</th>
							<td><input type="password" name="pass" class="form-control"/></td>
						</tr>
					</tbody>
				</table>
				<input class="common_button" type="submit" name="submit"  value="ログイン"/>
				ログイン済みの場合はログアウトボタンを表示
				<% if("login".equals(session.getAttribute("login_db"))) { %>
					<input class="common_button" type="submit" name="submit" value="ログアウト"/>
				<% } %>
			</form> --%>
	<!-- 	</div> -->
	</body>
</html>