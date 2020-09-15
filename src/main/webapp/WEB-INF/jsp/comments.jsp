<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="bootstrap.jsp" %>
<!DOCTYPE html>
<html>
<script>
var bno = '${detail.bno}';

$('[name=commentInsertBtn]').click(function(){
	var insertData = $('[name=commentInsertForm]').serialize();
	commentInsert(insertData);
});


function commentList(){
	$.ajax({
		url : 'comment/list',
		type : 'get',
		data : {'bno':bno},
		success : function(data){
			var a ='';
			$.each(data,function(key,value){
				a += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
				a += '<div class="commentInfo'+value.cno+'">'+'댓글번호 : '+value.cno+' / 작성자 : '+value.writer;
				a += '<a onclick="commentUpdate('+value.cno+',\''+value.content+'\')"> 
			})
		}
	})
}

</script>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>