<%@ page import="java.util.ArrayList"%>
<%@ page import="websample13_14_ans.ItemBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%-- Java入門 商品一覧画面 --%>
<!DOCTYPE html>
<html>
	<head>
		<title>ItemList</title>
	</head>
	<body>
		<jsp:include page="header.jsp"/>
			<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
		      <h1 class="display-4">Product</h1>
		      <p class="lead w-75 mx-auto">Online shopping from the earth's biggest selection of books, magazines, music, DVDs, videos, electronics, computers, software, apparel & accessories, shoes, jewelry, tools & hardware, housewares, furniture, sporting goods, beauty ...</p>
		    </div>

    <div class="container">


	<%-- リクエストスコープからBeanクラスの配列を取得（eclipseの警告が出ても今回は大丈夫） --%>
		<% ArrayList<ItemBean> itemList = (ArrayList<ItemBean>)request.getAttribute("itemList"); %>
		<form action="./BuyItemServlet_ans">
		<!-- Beanの要素数分（商品の種類分）テーブルを作成 -->
		<% for(ItemBean bean : itemList) { %>
			<div class="card">
		    	<h5 class="card-header py-3"><%= bean.getItemName() %></h5>
			  	<div class="card-body mb-0 pb-0">
			    	<h5 class="card-title ml-4">¥<%= bean.getPrice() %></h5>
			    	<!-- <p class="card-text"> -->
			    		<div class="row ml-5">

							 <% if(bean.getQuantity() != 0) { %>
							<!-- 数量（在庫）がある場合はリストボックスをと購入ボタンを表示 -->
							<select class="mr-sm-2 form-control w-25" name="<%= bean.getItemId() %>list">
									<% for(int i = 0; i <= bean.getQuantity(); i++) { %>
									<option value=<%=i%>><%=i%></option>
									<% } %>
								</select>
								<h2>
								/ <%= bean.getQuantity() %>
								</h2>

							<% } else { %>
									<button class="button">売り切れ！</button>
							<% } %>
							<input type="submit" class="btn btn-lg btn-primary ml-auto float-right" name="<%= bean.getItemId() %>" value="購入">
						</div>


			  	</div>
			</div>
			<% } %>
			<input class="btn btn-lg btn-secondary" type="button" onclick="location.href='./WEB-sample13_14_ans/login.jsp'" value="戻る">
		</form>


<%--     <div class="card-deck mb-3 text-center">
    <!-- リクエストスコープからBeanクラスの配列を取得（eclipseの警告が出ても今回は大丈夫） -->
		<% ArrayList<ItemBean> itemList = (ArrayList<ItemBean>)request.getAttribute("itemList"); %>
    <form action="./BuyItemServlet_ans">
      <!-- Beanの要素数分（商品の種類分）テーブルを作成 -->
		<% for(ItemBean bean : itemList) { %>
        <div class="card mb-4 box-shadow">
        	<div class="card-header">
            	<h4 class="my-0 font-weight-normal"><%= bean.getItemName() %></h4>
         	</div>
          	<div class="card-body">
	            <h1 class="card-title pricing-card-title">¥<%= bean.getPrice() %> <small class="text-muted">/ mo</small></h1>
	            <ul class="list-unstyled mt-3 mb-4">
		              <li>10 users included</li>
		              <li>2 GB of storage</li>
		              <% if(bean.getQuantity() != 0) { %>
						<!-- 数量（在庫）がある場合はリストボックスをと購入ボタンを表示 -->
						<li>
			              	<select class="list custom-select mr-sm-2 form-control" name="<%= bean.getItemId() %>list">
								<% for(int i = 0; i <= bean.getQuantity(); i++) { %>
								<option value=<%=i%>><%=i%></option>
								<% } %>
							</select>
						</li>
			            <li>/ <%= bean.getQuantity() %></li>
			           <% } else { %>
							<li>
								<button class="button">売り切れ！</button>
							</li>
						<% } %>
	            </ul>
            	<input type="submit" class="btn btn-lg btn-block btn-outline-primary" name="<%= bean.getItemId() %>" value="購入">
          	</div>
        </div>
		<% } %>
		<input class="btn btn-info" type="button" onclick="location.href='./WEB-sample13_14_ans/login.jsp'" value="戻る">
		</form>
	</div>
 --%>








      <footer class="pt-4 my-md-5 pt-md-5 border-top">

      </footer>
    </div>

	</body>
</html>