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
			
			
			
		} catch(Exception e){
			e.printStackTrace();
		}
	}
	
%>

	<section class="manager_section">
		<table>
			
		</table>
	</section>
</body>
</html>