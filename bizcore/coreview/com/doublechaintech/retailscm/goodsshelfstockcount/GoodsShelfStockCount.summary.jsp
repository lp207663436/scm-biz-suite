<%@ page language="java" contentType="text/plain; charset=utf-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sky" tagdir="/tags"%>
<fmt:setLocale value="zh_CN"/>
<c:set var="ignoreListAccessControl" value="${true}"/>



<style>
	
	table{
	  border: 1px solid black;
	  border-collapse: collapse;
	  width: 100%;
	  font-size: 12px;
	  padding: 5px;
	}
	th {
	  border: 1px solid black;
	  border-collapse: collapse;
	  font-size: 12px;
	  padding: 5px;
	  text-align: center;
	  background-color: lightgray;
	}
	td {
	  border: 1px solid black;
	  border-collapse: collapse;
	  
	  font-size: 10px;
	  padding-left: 5px;
	}
	
	/**/
	.table ,.tbody {
		all:unset;
		border: 1px solid black;
		
		width:100%;
	}

	.tr {
		all:unset;
		
		width: 25%;
	}

	.td {
		border: 1px solid red;
		border:initial;
		all:unset;
		text-align: justify;
		
		outline: none;
		font-size: 10px;
	  	padding: 5px;
		background-color: darkblue;
		word-break: break-all;
		
	}
	.th {
		width:"80px";
		background-color: lightgray;

		font-size: 10px;
		font-family: "Gill Sans Extrabold", sans-serif;
		padding: 5px;
		text-align: left;
		word-break: break-all;		
	}
	
</style>
<section><h3>货架库存盘点(${result.id})</h3><table >
<tr><td class='th'>头衔</td><td >${result.title}</td><td class='th'>计数时间</td><td ><fmt:formatDate pattern="yyyy-MM-dd" value="${result.countTime}" /></td></tr><tr><td class='th'>概览</td><td >${result.summary}</td><td class='th'>架</td><td >${result.shelf.displayName}</td></tr></table>
</section>
<section><c:if test="${not empty result.stockCountIssueTrackList}">
<section><h3>库存计数问题跟踪</h3>
<table><tr>
<tr>
<th>ID</th><th>头衔</th><th>计数时间</th><th>概览</th><th>盘点</th></tr>	<c:forEach items="${result.stockCountIssueTrackList}" var="item">
	<tr>
<td>${item.id}</td><td>${item.title}</td><td><fmt:formatDate pattern="yyyy-MM-dd" value="${item.countTime}" /></td><td>${item.summary}</td><td>${item.stockCount.displayName}</td></tr></c:forEach></table>
</section>
</c:if></section>
