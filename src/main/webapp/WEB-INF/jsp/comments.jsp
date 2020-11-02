<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<script>
var bno = '${detail.bno}'; //게시글 번호
 
 $('[name=commentInsertBtn]').click(function(){ //댓글 등록 버튼 클릭시 
	alert("commentInsertBtn clicked");
    var insertData = $('[name=commentInsertForm]').serialize(); //commentInsertForm의 내용을 가져옴
    commentInsert(insertData); //Insert 함수호출(아래)
});
 


//댓글 목록 
function commentList(){
    $.ajax({
        url : '/comment/list',
        type : 'get',
        data : {'bno':bno},
        success : function(data){
            var a =''; 
            $.each(data, function(key, value){ 
            	a += '<tr>';
            	a += '<td>'+value.cno+'</td>';
            	a += '<td class="tx-12">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti</td>';
            	a += '<td class="tx-center">'+value.writer+'</td>';
            	a += '<td class="tx-center" onclick="commentUpdate('+value.cno+',\''+value.content+'\');">수정</td>';
            	a += '<td class="tx-center" onclick="commentDelete('+value.cno+');">삭제</td>';
            	a += '</tr>';
            });
            
            $(".commentList").html(a);
        }
    });
}
 


//댓글 수정 - 댓글 내용 출력을 input 폼으로 변경 
function commentUpdate(cno, content){
	 var a ='';
	 
	 a += '<div class="input-group">';
	 a += '<input type="text" class="form-control" name="content_'+cno+'" value="'+content+'"/>';
	 a += '<span class="input-group-btn"><button class="btn btn-default" type="button" onclick="commentUpdateProc('+cno+');">수정</button> </span>';
	 a += '</div>';
	 
	 $('.commentContent'+cno).html(a);
}
 
//댓글 수정
function commentUpdateProc(cno){
	var updateContent = $('[name=content_'+cno+']').val();

	 $.ajax({
		 url : '/comment/update',
	        type : 'post',
	        data : {'content' : updateContent, 'cno' : cno},
	        success : function(data){
	            if(data == 1) commentList(bno); //댓글 수정후 목록 출력 
	        }
	    });
	 }
	 
//댓글 삭제 
function commentDelete(cno){
	   $.ajax({
		   url : '/comment/delete/'+cno,
		   type : 'post',
		   success : function(data){
			   if(data == 1) commentList(bno); //댓글 삭제후 목록 출력
		   }
	    });
	}

$(document).ready(function(){
    commentList(); //페이지 로딩시 댓글 목록 출력 
});

</script>

