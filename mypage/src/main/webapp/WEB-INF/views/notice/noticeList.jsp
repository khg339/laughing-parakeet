<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 목록</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
    
    $(document).ready(function(){        
        getNoticeList();
    });
 
    function getNoticeList(){
        
        $.ajax({            
            type:"GET",
            url:"/notice/getNoticeList",
            dataType:"JSON",
            success : function(obj) {
                getNoticeListCallback(obj);                
            },           
            error : function(xhr, status, error) {}
         });
    }
    
    function getNoticeListCallback(obj){
        
        var list = obj;
        var listLen = obj.length;
        
        console.log(list);
        console.log(listLen);
        
        var str = "";
        
        if(listLen >  0){
            
            for(var a=0; a<listLen; a++){
                
                var noticeno       = list[a].noticeno; 
                var title         = list[a].title; 
                var name        = list[a].name; 
                var content        = list[a].content; 
                var datetime     = list[a].datetime; 
                var n_type     = list[a].n_type; 
                
                str += "<tr>";
                str += "<td>"+ noticeno +"</td>";
                str += "<td>"+ title +"</td>";
                str += "<td>"+ name +"</td>";   
                str += "<td>"+ content +"</td>";
                str += "<td>"+ datetime +"</td>";   
                str += "<td>"+ n_type +"</td>";   
                str += "</tr>";
                
            } 
            
        } else {
            
            str += "<tr colspan='4'>";
            str += "<td>등록된 글이 존재하지 않습니다.</td>";
            str += "<tr>";
        }
        
        $("#tbody").html(str);
    }
    
</script>
</head>
<body>
<table border=1 width=350>
    <thead>
        <tr>
            <td>공지번호</td>
            <td>제목</td>
            <td>작성자</td>
            <td>내용</td>
            <td>작성일</td>
            <td>유형</td>
            
        </tr>
    </thead>
    <tbody id="tbody">

    </tbody>
    
</table>
</body>
</html>
 
