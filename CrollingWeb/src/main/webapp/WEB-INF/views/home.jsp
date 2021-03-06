<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Home</title>

<!-- 부트스트랩 -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<style>
	html, body {
		height: 100%;
		width: 100%;
		margin: 0;
	}
	
	#main {
		height: 100%;
		width: 100%;
		display: flex;
		align-items: center;
		justify-content: center;
	}
	
	#frm {
		margin: auto;
		max-width: 50%;
	}
	
	#button {
		text-align: center;
	}
</style>
</head>

<body>

	<script>
		function urlSubmit(){
			
			if(!$('#frm #siteURL').val()){		
				alert('URL을 입력하세요.');
			}
			else
				$('#frm').submit();
		}
		function coronaURL(){
			$('#frm #siteURL').val("http://ncov.mohw.go.kr/bdBoardList_Real.do?brdId=1&brdGubun=13&ncvContSeq=&contSeq=&board_id=&gubun=");
			$('#frm').submit();
		}
	</script>

	<div id="main">
		<form id="frm" action=<c:url value="/goCrolling" /> method=post>
		
			<p style="text-align:center;">
				# 주소 입력
			</p>
			<label style="font-size:10px; text-align:center;">날씨 주소: https://n.weather.naver.com/ </label>
			<p>
				<input type=text class="form-control" id=siteURL name=siteURL
					style="width: 500px;">
			</p>
			<p  style="text-align:center;">
				<button type="button" class="btn btn-secondary" onclick="urlSubmit();">크롤링</button>
			</p><br /><br/>
			<p  style="text-align:center;">
				<button type="button" class="btn btn-secondary" onclick="coronaURL();">코로나 상황 크롤링</button>
			</p>
		</form>
	</div>
	
</body>
</html>
