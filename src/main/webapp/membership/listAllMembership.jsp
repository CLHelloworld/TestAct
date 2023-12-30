<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.membership.model.*"%>
<%@ page import="java.util.Base64"%>
<%@ page import="util.Util"%>
<%@ page import="com.membership.service.*"%>

<%-- �����m�߱ĥ� EL ���g�k���� --%>

<%
MembershipService membershipSvc = new MembershipService();
List<MembershipVO> list = membershipSvc.getAll();
pageContext.setAttribute("list", list);
%>


<html>
<head>
<title>�Ҧ��|���u��� - listAllMembership.jsp</title>

<style>
  table#table-1 {
	background-color: pink;
    border: 2px solid pink;
    text-align: center;
    
  }
  table#table-1 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
 
  }
</style>

<style>
  table {
	width: 1250px;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
	
  
  table, th, td {
    border: 1px solid pink;
    
  }
  th, td {
    padding: 5px;
    text-align: center;
  }
</style>

</head>
<body bgcolor='white'>

<table id="table-1">
	<tr><td>
		 <h3>�Ҧ��|����� - listAllMembership.jsp</h3>
		 <h4><a href="select_page.jsp"><img src="images/back1.gif" width="100" height="32" border="0">�^����</a></h4>
	</td></tr>
</table>

<table>
	<tr>
		<th>�|���s��</th>
		<th>�|���b��</th>
		<th>�|���q�l�H�c</th>
		<th>�|���K�X</th>
		<th>�|���m�W</th>
		<th>�|���ʧO</th>
		<th>�|���X�ͤ��</th>
		<th>�|���Τ�W��</th>
		<th>�|���Ϥ�</th>
		<th>�|���b�᪬�A</th>
		<th>�|���ѥ[�����v��</th>
		<th>�|���|�쬡���v��</th>
		<th>�|�����ɳ��a�v��</th>
		<th>�|���d���v��</th>
		<th>�ק�</th>
	</tr>
	<%@ include file="page1.file" %> 
	<c:forEach var="membershipVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
		
		<tr>
		
			<td>${membershipVO.memId}</td>
			<td>${membershipVO.memAcc}</td>
			<td>${membershipVO.memEmail}</td>
			<td>${membershipVO.memPwd}</td>
			<td>${membershipVO.memName}</td>
			<td>${membershipVO.memGender}</td>
			<td>${membershipVO.memBirthdate}</td>
			<td>${membershipVO.memUsername}</td>
<%-- 			<td> <img src="data:image/png;base64,${membershipVO.memPic != null? Base64.getEncoder().encodeToString(membershipVO.memPic): ''}" --%>
<!-- 		 alt="Image" style="width: 150px; height: auto;"></td>  -->

		<td> <img src="${membershipVO.memPic != null? 'data:'.concat(Util.getMimeType(membershipVO.memPic)).concat(';base64,').concat(Base64.getEncoder().encodeToString(membershipVO.memPic)): 'images/notfind.jpg'}"
		 alt="Image" style="width: 150px; height: auto;"></td> 
			<td>${membershipVO.isAccEna}</td>
			<td>${membershipVO.isPartEna}</td>
			<td>${membershipVO.isHostEna}</td>
			<td>${membershipVO.isRentEna}</td>
			<td>${membershipVO.isMsgEna}</td>
 
			
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/membership/membership.do" style="margin-bottom: 0px;">
			     <input type="submit" value="�ק�">
			     <input type="hidden" name="memId"  value="${membershipVO.memId}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			</td>
			<!-- <td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/membership/membership.do" style="margin-bottom: 0px;">
			     <input type="submit" value="�R��">
			     <input type="hidden" name="memId"  value="${membershipVO.memId}">
			     <input type="hidden" name="action" value="delete"></FORM>
			</td>-->
		</tr>
	</c:forEach>
</table>
<%@ include file="page2.file" %>

</body>
</html>