<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./../template/top.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

function cart(){
location.href="add.mall?fnum="+$("input[name='fnum']").val()+"&fqty="+$("input[name='fqty']").val();
}

</script>
<style>
.food_detailheader{
	font-size: 20px;
}
</style>
</head>
<body>
<br><br>


<div class="container">
	<div class="food_detailheader" align="center">
	<p>상품 목록</p>
	</div>
	<br><br>
<form action="detail.fd?fnum=${food.fnum+1 }" method="post">
<table class="table table-hover" align="center">
	<tr>
	<input type="hidden" name="fnum" value="${food.fnum }">
		<td>
			<img width="250" height="250" src="./resources/images/${food.fimage }">
		</td>
		<td valign="top">
			재료명 : ${food.fname }<br><br>
			가격 : ${food.fprice }원<br><br>
			포인트 : ${food.fpoint }점<br><br>
			수량 : <input type="text" name="fqty" value="${food.fqty}"><br><br>
			납품 회사 : ${food.fcompany }<br><br>
			입고일 : ${food.finputdate }
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<textarea rows="10" cols="60" disabled="disabled" style="font-size: 16px; background-color: white;">${food.fcontents }</textarea>
		</td>
	</tr>
	<tr>
		<td align="left">
			<%-- <a href="add.mall?fnum=${food.fnum }&fqty=${food.fqty}"> --%>
				<input type="button" value="장바구니" onclick="cart()">
			<!-- </a> -->
			<a href="#">
				<input type="button" value="구매하기">
			</a>
		</td>
		<td align="right">
			<a href="list.fd">
				<input type="button" value="목록보기">
			</a>
		</td>
	</tr>
</table>
</form>
</div>
<br><br>
<%@ include file="./../template/bottom.jsp" %>
</body>
</html>