<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.request.contextPath}/"/>
<meta charset="UTF-8">
<title>首页</title>
<link href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
	.container{
		margin-left:10px;
	}
	.p-comment{
		background: #e7e4e4;
		width: 300px;
	}
</style>
</head>
<body>
	<div class="container">
		<h1>${info.title}</h1>
		<div>发表于：<fmt:formatDate value="${info.reportTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
		<div>
			${info.content}
		</div>
		<div>
			<h3>读者回应</h3>
			<div>
				<c:forEach items="${info.replies}" var="reply">
					<p class="p-comment">
						<fmt:formatDate value="${reply.replyTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
						<br/>
						${reply.content}
					</p>
				</c:forEach>				
			</div>
		</div>
		<div>
			发表回复：(字数在200字以内)
			<br>
			<textarea rows="" cols=""></textarea>
			<br>
			<input type="button" value="发表回复"  class="btn btn-success"/>
			&nbsp;&nbsp;&nbsp;
			<a href="javascript:history.go(-1);">返回首页</a>
		</div>
	</div>
</body>
</html>