<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="./../template/top.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>앨범 등록 화면</title>
<style type="text/css">
.err {
	font-size: 9pt;
	color: red;
	font-weight: bold;
}
</style>
<script type="text/javascript" src="./resources/js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function() { 
		inputdate();
		$('input[name="fname"]').focus();
	});
	function inputdate() {
		 $("input[name='finputdate']").val(
				$("input[name='year']").val()+"-"+
				$("input[name='month']").val()+"-"+
				$("input[name='day']").val()
		);
	}
</script>
</head>
<body>
	<br>
	<form:form commandName="food" method="post" action="insert.fd"
		enctype="multipart/form-data">
		<table align="center" border="1">
<!-- 			<tr>
				<th colspan="2">
					<h1>
						<span>식재료 추가 화면</span>
					</h1>
				</th>
			</tr> -->
			<tr>
				<td><label for="fname">식재료 이름</label></td>
				<td><input type="text" name="fname" value="들어갈거지"> <form:errors
						cssClass="err" path="fname"></form:errors></td>
			</tr>
			<tr>
				<td><label for="fcategory">식재료 종류</label></td>
				<td><input type="text" name="fcategory" value="채소"> <form:errors
						cssClass="err" path="fcategory"></form:errors></td>
			<tr>
				<td><label for="upload">사진</label></td>
				<td><input type="file" name="upload"> <form:errors
						cssClass="err" path="upload"></form:errors></td>
			</tr>
			<tr>
				<td><label for="fqty">수량</label></td>
				<td><input type="text" name="fqty" value="1"> <form:errors
						cssClass="err" path="fqty"></form:errors></td>
			</tr>
			<tr>
				<td><label for="price">가격</label></td>
				<td><input type="text" name="fprice" value="1000"> <form:errors
						cssClass="err" path="fprice"></form:errors></td>
			</tr>
			<tr>
				<td><label for="fcompany">생산지</label></td>
				<td><input type="text" name="fcompany" value="농협"> <form:errors
						cssClass="err" path="fcompany"></form:errors></td>
			</tr>
			<tr>
				<td><label for="fpoint">포인트</label></td>
				<td><input type="text" name="fpoint" value="10"> <form:errors
						cssClass="err" path="fpoint"></form:errors></td>
			</tr>
			<tr>
				<td><label for="finputdate">날짜</label></td>
				<td><input type="hidden" name="finputdate"> <input
					type="text" name="year" value="2016" size="4" maxlength="4"
					onkeyup="inputdate()">년 <input type="text" name="month"
					value="6" size="2" maxlength="2" onkeyup="inputdate()">월 <input
					type="text" name="day" value="2" size="2" maxlength="2"
					onkeyup="inputdate()">일 <form:errors cssClass="err"
						path="finputdate"></form:errors></td>
			</tr>
			<tr>
				<td><label for="fcontents">상세내용</label></td>
				<td>
					<textarea rows="10" cols="50" name="fcontents">맛있는 사과</textarea>
					<form:errors cssClass="err" path="fcontents"></form:errors></td>
			</tr>
			<tr>
				<td align="left"><input type="submit" value="추가하기"></td>
				<td align="right"><a href="list.fd"><input type="button" value="돌아가기"></a></td>
			</tr>
		</table>
	</form:form>
<%@ include file="./../template/bottom.jsp" %>
</body>
</html>