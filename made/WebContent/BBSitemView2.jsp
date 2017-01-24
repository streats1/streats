<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id="bbsitem" class="made.BBSitems"></jsp:useBean>
<jsp:setProperty property="seqno" name="bbsitem" value ="${param.SEQ_NO}"/> 
<% bbsitem.readDB(); %> 
<h2>게시판 읽기</h2>
[제목]${bbsitem.title}<br/>
[작성자]${bbsitem.writer}<br/>
[작성시일]${bbsitem.wdate}${bbsitem.wtime}<br/>
=======================================<br/>
${bbsitem.content}