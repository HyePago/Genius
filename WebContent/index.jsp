<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="css/myStyle.css" rel="stylesheet">
<title>��ǳ�� ���ǽ���</title>
</head>
<body>
	<nav class="main_nav">
		<font color="white" size="3.8em">
			<input type="radio" value="1" name="number" checked="checked">��Գ�&nbsp;
			<input type="radio" value="2" name="number">�質��&nbsp;
			<input type="radio" value="3" name="number">��ο�&nbsp;
			<input type="radio" value="4" name="number">�輭��&nbsp;
			<input type="radio" value="5" name="number">��¾� <br><br>
			<input type="radio" value="6" name="number">�迩��&nbsp;
			<input type="radio" value="8" name="number">������&nbsp;
			<input type="radio" value="11" name="number">�ڽſ�&nbsp;
			<input type="radio" value="15" name="number">���Ͽ�&nbsp;
			<input type="radio" value="17" name="number">ä���&nbsp;
			<input type="radio" value="18" name="number">ȫ����&nbsp;
		</font>
	</nav>
	<section class="main_section">
		<div class="time_select">
			�ð� : 
			<select name="time" class="main_select">
				<optgroup label="1 Round">
					<option value="0">9:00</option>
					<option value="1">9:05</option>
					<option value="2">9:10</option>
					<option value="3">9:15</option>
					<option value="4">9:20</option>
					<option value="5">9:25</option>
					<option value="6">9:30</option>
					<option value="7">9:35</option>
					<option value="8">9:40</option>
					<option value="9">9:45</option>
					<option value="10">9:50</option>
					<option value="11">9:55</option>
				</optgroup>
				<optgroup label="2 Round">
					<option value="12">10:15</option>
					<option value="13">10:20</option>
					<option value="14">10:25</option>
					<option value="15">10:30</option>
					<option value="16">10:35</option>
					<option value="17">10:40</option>
					<option value="18">10:45</option>
					<option value="19">10:50</option>
					<option value="20">10:55</option>
					<option value="21">11:00</option>
					<option value="22">11:05</option>
				</optgroup>
			</select>
		</div>
		
		<div class="main_section_div">
			<table>
				<tr>
					<td width="200px"> SQI����Ʈ </td>
					<td width="200px"> <input type="number" name="sqi_number" value="0"> </td>
				</tr>
				<tr>
					<td> ��������Ʈ </td>
					<td> <input type="number" name="inji_number" value="0"> </td>
				</tr>
				<tr>
					<td> �ں��� </td>
					<td> <input type="number" name="cobi_number" value="0"> </td>
				</tr>
				<tr>
					<td> ��������Ÿ���� </td>
					<td> <input type="number" name="sam_number" value="0"> </td>
				</tr>
				<tr>
					<td> ��������Ʈ </td>
					<td> <input type="number" name="i_number" value="0"> </td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="����" class="main_btn" style="width: 130px; height: 40px; text-align: center; padding: 0;"> <input type="button" style="width: 130px; height: 40px; text-align: center;padding: 0;" value="�Ǹ�" class="main_btn">
					</td>
				</tr>
			</table>
		</div>
	</section>
</body>
</html>