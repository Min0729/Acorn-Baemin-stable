<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="<%=request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Login Result</title>
<style>
/* CSS 스타일 정의 */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

a {
	text-decoration: none;
}

header {
	background-color: #48D1CC;
	height: 100px;
	margin-bottom: 50px;
}

section {
	
}

footer {
	
}

body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
}

.input-container {
	display: flex;
	align-items: center;
}

input[type="text"] {
	flex: 1;
	/* Allow the input to expand and fill available space */
}

button#checkDuplicate {
	background-color: #48D1CC;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	margin-left: 10px;
	/* Add margin to separate the button from the input */
}

.container {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}

.modify-title {
	text-align: center;
	padding: 40px;
}

h1 {
	color: #333;
}

p {
	font-size: 18px;
	color: #555;
}

.modify-form {
	background-color: #fff;
	padding: 20px;
	max-width: 350px;
	/* 폼의 최대 너비 설정 */
	width: 100%;
	border: 3px solid #48D1CC;
	box-shadow: 0px 0px 5px #ccc;
	border-radius: 10px;
}

span {
	display: block;
	margin-top: 5px;
	margin-bottom: 5px;
	font-weight: bolder;
}

.input-container-id {
	display: flex;
	align-items: center;
}

.input-container-address {
	display: flex;
	align-items: center;
}

.input-container-address-button {
	font-size: 20px;
}

input[type="text"], input[type="password"], input[type="tel"], input[type="email"],
	input[type="date"], input[type="button"] {
	width: 99%;
	height: 25px;
	padding: 10px;
	font-size: 20px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

input[type="button"] {
	background-color: #48D1CC;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	margin-left: 10px;
}

.vertical-center {
	line-height: 30px;
	/* 이 값을 조정해서 세로 중앙 정렬의 높이를 조절할 수 있음 */
}

input:focus {
	border-color: #0982f0;
	/* 포커스 시 테두리 색상 설정 */
	outline: none;
	/* 포커스 아웃라인 제거 */
}

input[type="submit"] {
	font-weight: bolder;
	font-size: 18px;
	background-color: #48D1CC;
	color: white;
	height: 50px;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 250px;
	display: block;
	margin: 0 auto;
}

a {
	color: #007bff;
	text-decoration: none;
}

.options {
	position: relative;
	align-items: center;
	height: 20px;
}

.optlab1 {
	left: 0px;
}

.optlab2 {
	right: 0px;
}

.options label {
	margin-right: 20px;
	/* 각 옵션 사이의 간격 조절 */
	position: absolute;
}

.remember-me {
	display: flex;
	align-items: center;
	font-size: 12px;
}

.remember-links {
	font-size: 12px;
	left: 0px;
}

.signup-link {
	margin-top: 10px;
	text-align: right;
	font-size: 12px;
}

.right-links {
	text-align: right;
}

.kakao {
	margin-top: 20px;
	text-align: center;
}
</style>
</head>

<body>


	<header>
		<div class="headerwrap">배달의 민족</div>
	</header>

	<section>
		<div class="container">

			<!-- 수정 폼 -->
			<form class="modify-form" action="${path}/home" method="post">
				<div class="modify-title">
					<h1>내 정보 수정</h1>
				</div>

				<span class="input-container-id"> 
					<input type="text" id="userId" placeholder="닉네임" class="vertical-center" value="${modify.userNickname}">
				</span> 
				<br> 
				<span> 
					<input type="tel" name="userPhone" placeholder="연락처('-' 없이 11자리)" class="vertical-center" value="${modify.userPhone}">
				</span> 
				<br> 
				<span class="input-container-address"> 
					<input type="text" id="houseAddress" placeholder="우편번호" class="vertical-center" value="${modify.userPostCode}"> 
				<span class="input-container-address-button">
				</span> 
					<input type="button" value="우편번호 찾기" class="vertical-center" style="width: 100px;">
				</span> 
				<span> 
					<input type="text" name="userAddress" placeholder="주소" class="vertical-center" value="${modify.userAddress}">
				</span> 
				<span> 
					<input type="text" name="userAddressdetail"	placeholder="상세주소" class="vertical-center" value="${modify.userAddressDetail}">
				</span> 
				<span> 
					<input type="email" name="userEmail" placeholder="이메일" class="vertical-center" value="${modify.userEmail}">
				</span> 
					<input type="submit" value="완료">

			</form>

			<p>	<a href="${path}/home">홈으로 돌아가기</a></p>	
		</div>

	</section>
	<footer> </footer>


</body>

</html>