<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="css/myStyle.css" rel="stylesheet">
</head>
<body>
<%
	int[] money = new int[11];
	int[] sqi = new int[11];
	int[] inji = new int[11];
	int[] cobi = new int[11];
	int[] sam = new int[11];
	int[] i = new int[11];

	int[] num = new int[]{1,2,3,4,5,6,8,11,15,17,18};
	String[] name = new String[]{"��Գ�", "�質��", "��ο�", "�輭��", "��¾�", "�迩��", "������", "�ڽſ�", "���Ͽ�", "ä���", "ȫ����"};
	
	BufferedReader reader = null;
	String filePath;
	
	for(int j=0; j<11; j++){
		filePath = application.getRealPath("/WEB-INF/money/"+ num[j] +".txt");
		
		try {
			reader = new BufferedReader(new FileReader(filePath));
			
			String str = reader.readLine();
			str = reader.readLine();
			
			money[j] = Integer.parseInt(str);
			
			filePath = application.getRealPath("/WEB-INF/member/"+ num[j] +".txt");
			
			reader = new BufferedReader(new FileReader(filePath));
			str = reader.readLine();
			str = reader.readLine();
			
			String[] info = str.split("\t");
			sqi[j] = Integer.parseInt(info[0]);
			inji[j] = Integer.parseInt(info[1]);
			cobi[j] = Integer.parseInt(info[2]);
			sam[j] = Integer.parseInt(info[3]);
			i[j] = Integer.parseInt(info[4]);
		} catch(Exception e){
			e.printStackTrace();
		}
	}
	
%>

	<section class="manager_section">
		<table style="text-align: center;">
			<tr>
				<th width="80px"> �̸� </th>
				<th width="150px"> �ܾ� </th>
				<th width="100px"> SQI����Ʈ </th>
				<th width="100px"> ��������Ʈ </th>
				<th width="100px"> �ں��� </th>
				<th width="100px"> SDS </th>
				<th width="100px"> ��������Ʈ </th>
			</tr>
			<%
				for(int j=0; j<11; j++){
			%>
				<tr>
					<td> <%= name[j] %> </td>
					<td style="color: yellow;"> <%= money[j] %> </td>
					<td> <%= sqi[j] %> </td>
					<td> <%= inji[j] %> </td>
					<td> <%= cobi[j] %> </td>
					<td> <%= sam[j] %> </td>
					<td> <%= i[j] %> </td>
				</tr>
			<%
				}
			%>
		</table>
	</section>
</body>
</html>