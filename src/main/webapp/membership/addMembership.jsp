<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.membership.model.*"%>


<%
//��com.emp.controller.EmpServlet.java��238��s�Jreq��empVO���� (������J�榡�����~�ɪ�empVO����)
MembershipVO membershipVO = (MembershipVO) request.getAttribute("membershipVO");
%>



<!-- <%=membershipVO == null%>  -->
<!--${empVO.deptno}-- -- line 100 -->

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>�|����Ʒs�W - addMembership.jsp</title>

<style>
table#table-1 {
	background-color: pink;
	text-align: center;
}

table#table-1 h4 {
	color: black;
	display: block;
	margin-bottom: 1px;
}

h4 {
	color: blue;
	display: inline;
}
</style>

<style>
table {
	width: 700px;
	background-color: white;
	margin-top: 1px;
	margin-bottom: 1px;
}

table, th, td {
	border: 0px solid #CCCCFF;
}

th, td {
	padding: 1px;
}
</style>

</head>
<body bgcolor='white'>

	<table id="table-1">
		<tr>
			<td>
				<h3>�|����Ʒs�W - addMembership.jsp</h3>
			</td>
			<td>
				<h4>
					<a href="select_page.jsp"><img src="images/back1.gif"
						width="100" height="65" border="0">�^����</a>
				</h4>

			</td>
		</tr>
	</table>

	<h3>��Ʒs�W:</h3>

	<%-- ���~��C --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">�Эץ��H�U���~:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>

	<form method="post" action="membership.do" enctype="multipart/form-data">
		<table>

			<tr>
				<td>�|���b��:<font color=red><b>*</b></font></td>
				<td><input type="TEXT" name="memAcc"
					value="<%=(membershipVO == null) ? "ballball" : membershipVO.getMemAcc()%>"
					size="45" /></td>
			</tr>

			<tr>
				<td>�|���q�l�H�c:<font color=red><b>*</b></font></td>
				<td><input type="TEXT" name="memEmail"
					value="<%=(membershipVO == null) ? "balbrother8787@yahoo.com.tw" : membershipVO.getMemEmail()%>"
					size="45" /></td>
			</tr>

			<tr>
				<td>�|���K�X:<font color=red><b>*</b></font></td>
				<td><input type="TEXT" name="memPwd"
					value="<%=(membershipVO == null) ? "bbbbbbbb" : membershipVO.getMemPwd()%>"
					size="45" /></td>
			</tr>

			<tr>
				<td>�|���m�W:<font color=red><b>*</b></font></td>
				<td><input type="TEXT" name="memName"
					value="<%=(membershipVO == null) ? "���\��" : membershipVO.getMemName()%>"
					size="45" /></td>
			</tr>

			<tr>
				<td>�|���ʧO:<font color=red><b>*</b></font></td>
				<td><input type="radio" name="memGender" value="1"
					${(membershipVO.memGender==1)?'checked':''} />�k</td>
				<td><input type="radio" name="memGender" value="2"
					${(membershipVO.memGender==2)?'checked':'' } />�k</td>
			</tr>

			<tr>
				<td>�|���X�ͤ��:<font color=red><b>*</b></font></td>
				<td><input name="memBirthdate" id="f_date1" type="text"></td>
			</tr>

			<tr>
				<td>�ϥΪ̦W��:<font color=red><b>*</b></font></td>
				<td><input type="TEXT" name="memUsername"
					value="<%=(membershipVO == null) ? "���\��" : membershipVO.getMemUsername()%>"
					size="45" /></td>
			</tr>

			<tr>
				<td>�|���Ϥ�:</td>
				<td><input type="file" name="memPic"
					accept="image/*"></td>
			</tr>

			<tr>
				<td>�|���b�᪬�A:</td>
				<td><input type="radio" name="isAccEna" value="1"
					${(membershipVO.isAccEna==1)?'checked':''} />�w���η|���b��</td>
				<td><input type="radio" name="isAccEna" value="2"
					${(membershipVO.isAccEna==2)?'checked':''} />�S�����η|���b��</td>
			</tr>

			<tr>
				<td>�|���ѥ[�����v��:</td>
				<td><input type="radio" name="isPartEna" value="1"
					${(membershipVO.isPartEna==1)?'checked':''} />�|���L�k�ѥ[����</td>
				<td><input type="radio" name="isPartEna" value="2"
					${(membershipVO.isPartEna==2)?'checked':''} />�|���i�H�ѥ[����</td>
			</tr>

			<tr>
				<td>�|���|�쬡���v��:</td>
				<td><input type="radio" name="isHostEna" value="1"
					${(membershipVO.isHostEna==1)?'checked':''} />�|���L�k�|�쬡��</td>
				<td><input type="radio" name="isHostEna" value="2"
					${(membershipVO.isHostEna==2)?'checked':''} />�|���i�H�|�쬡��</td>
			</tr>

			<tr>
				<td>�|�����ɳ��a�v��:</td>
				<td><input type="radio" name="isRentEna" value="1"
					${(membershipVO.isRentEna==1)?'checked':''} />�|���L�k���ɳ��a</td>
				<td><input type="radio" name="isRentEna" value="2"
					${(membershipVO.isRentEna==2)?'checked':''} />�|���i�H���ɳ��a</td>
			</tr>

			<tr>
				<td>�|���d���v��:</td>
				<td><input type="radio" name="isMsgEna" value="1"
					${(membershipVO.isMsgEna==1)?'checked':''} />�|���L�k�d��</td>
				<td><input type="radio" name="isMsgEna" value="2"
					${(membershipVO.isMsgEna==2)?'checked':''} />�|���i�H�d��</td>
			</tr>

		</table>
		<br> <input type="hidden" name="action" value="insert"> <input
			type="submit" value="�e�X�s�W">
	</FORM>
</body>




<!-- =========================================�H�U�� datetimepicker �������]�w========================================== -->

<%
java.sql.Date memBirthdate = null;
try {
	memBirthdate = membershipVO.getMemBirthdate();
} catch (Exception e) {
	memBirthdate = new java.sql.Date(System.currentTimeMillis());
}
%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.css" />
<script src="<%=request.getContextPath()%>/datetimepicker/jquery.js"></script>
<script
	src="<%=request.getContextPath()%>/datetimepicker/jquery.datetimepicker.full.js"></script>

<style>
.xdsoft_datetimepicker .xdsoft_datepicker {
	width: 300px; /* width:  300px; */
}

.xdsoft_datetimepicker .xdsoft_timepicker .xdsoft_time_box {
	height: 151px; /* height:  151px; */
}
</style>

<script>
        $.datetimepicker.setLocale('zh');
        $('#f_date1').datetimepicker({
	       theme: '',              //theme: 'dark',
	       timepicker:false,       //timepicker:true,
	       step: 1,                //step: 60 (�o�Otimepicker���w�]���j60����)
	       format:'Y-m-d',         //format:'Y-m-d H:i:s',
		   value: '<%=memBirthdate%> ', // value:   new Date(),
	//disabledDates:        ['2017/06/08','2017/06/09','2017/06/10'], // �h���S�w���t
	//startDate:	            '2017/07/10',  // �_�l��
	//minDate:               '-1970-01-01', // �h������(���t)���e
	//maxDate:               '+1970-01-01'  // �h������(���t)����
	});

	// ----------------------------------------------------------�H�U�ΨӱƩw�L�k��ܪ����-----------------------------------------------------------

	//      1.�H�U���Y�@�Ѥ��e������L�k���
	//      var somedate1 = new Date('2017-06-15');
	//      $('#f_date1').datetimepicker({
	//          beforeShowDay: function(date) {
	//        	  if (  date.getYear() <  somedate1.getYear() || 
	//		           (date.getYear() == somedate1.getYear() && date.getMonth() <  somedate1.getMonth()) || 
	//		           (date.getYear() == somedate1.getYear() && date.getMonth() == somedate1.getMonth() && date.getDate() < somedate1.getDate())
	//              ) {
	//                   return [false, ""]
	//              }
	//              return [true, ""];
	//      }});

	//      2.�H�U���Y�@�Ѥ��᪺����L�k���
	//      var somedate2 = new Date('2017-06-15');
	//      $('#f_date1').datetimepicker({
	//          beforeShowDay: function(date) {
	//        	  if (  date.getYear() >  somedate2.getYear() || 
	//		           (date.getYear() == somedate2.getYear() && date.getMonth() >  somedate2.getMonth()) || 
	//		           (date.getYear() == somedate2.getYear() && date.getMonth() == somedate2.getMonth() && date.getDate() > somedate2.getDate())
	//              ) {
	//                   return [false, ""]
	//              }
	//              return [true, ""];
	//      }});

	//      3.�H�U����Ӥ�����~������L�k��� (�]�i���ݭn������L���)
	//      var somedate1 = new Date('2017-06-15');
	//      var somedate2 = new Date('2017-06-25');
	//      $('#f_date1').datetimepicker({
	//          beforeShowDay: function(date) {
	//        	  if (  date.getYear() <  somedate1.getYear() || 
	//		           (date.getYear() == somedate1.getYear() && date.getMonth() <  somedate1.getMonth()) || 
	//		           (date.getYear() == somedate1.getYear() && date.getMonth() == somedate1.getMonth() && date.getDate() < somedate1.getDate())
	//		             ||
	//		            date.getYear() >  somedate2.getYear() || 
	//		           (date.getYear() == somedate2.getYear() && date.getMonth() >  somedate2.getMonth()) || 
	//		           (date.getYear() == somedate2.getYear() && date.getMonth() == somedate2.getMonth() && date.getDate() > somedate2.getDate())
	//              ) {
	//                   return [false, ""]
	//              }
	//              return [true, ""];
	//     }});
</script>
</html>