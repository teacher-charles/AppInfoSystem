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
	h1{
		text-align: center;
	}
	.table-div{
		width:800px;
		margin:0 auto;
	}
</style>
</head>
<body>
	<div>
		<h1>热点资讯网</h1>
		<div class="table-div">
			<table class="table table-hover table-bordered table-striped">
				<thead>
					<tr>
						<td>序号</td>
						<td>标题</td>
						<td>回复/查看</td>
						<td>发表时间</td>
						<td>最后修改</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${infoList}" var="info" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td>
								<a href="info/${info.id}">${info.title}</a>
							</td>
							<td>${info.replyCount}/${info.viewCount}</td>
							<td>
								<fmt:formatDate value="${info.reportTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
							</td>
							<td>
								<fmt:formatDate value="${info.lastMdfTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>