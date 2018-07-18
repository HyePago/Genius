<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String filePath = application.getRealPath("/WEB-INF/manager/1.txt");
		int time = Integer.parseInt(request.getParameter("time"));
		int sqi_number = Integer.parseInt(request.getParameter("sqi_number"));
		int inji_number = Integer.parseInt(request.getParameter("inji_number"));
		int cobi_number = Integer.parseInt(request.getParameter("cobi_number"));
		int sam_number = Integer.parseInt(request.getParameter("sam_number"));
		int i_number = Integer.parseInt(request.getParameter("i_number"));		
		int number = Integer.parseInt(request.getParameter("number"));	
		
		int money = 0;
		
		String str;
		
		BufferedReader reader = null;
		
		int sqi = 0, inji = 0, cobi = 0, sam = 0, i = 0, price = 0;
		int sqi_count = 0, inji_count = 0, cobi_count = 0, sam_count = 0, i_count = 0;
		
		try {
			reader = new BufferedReader(new FileReader(filePath));
			int count = 0;
			
			while(true){
				str = reader.readLine();
				if(str == null) break;
				

				if(time == 0){
					sqi = 2000;
					inji = 2000;
					cobi = 2000;
					sam = 2000;
					i = 2000;
					break;
				}
				
				if(count == time){
					String[] info = str.split("\t");
					sqi = Integer.parseInt(info[0]);
					inji = Integer.parseInt(info[1]);
					cobi = Integer.parseInt(info[2]);
					sam = Integer.parseInt(info[3]);
					i = Integer.parseInt(info[4]);
					
					break;
				}
				count ++;
			}
			
			price = (inji * inji_number) + (sqi * sqi_number) + (cobi * cobi_number) + (sam * sam_number) + (i * i_number);
			
			filePath = application.getRealPath("/WEB-INF/money/"+number+".txt");
			reader = new BufferedReader(new FileReader(filePath));
			
			str = reader.readLine();
			str = reader.readLine();
			
			money = Integer.parseInt(str);

			if(money - price < 0){
				// 구매할 수 없다.
				out.println("<script>alert('구매할 수 없습니다');location.href='index.jsp';</script>");
				return;
			}
			
			money -= price;
			
			BufferedWriter bw = new BufferedWriter(new FileWriter(filePath));
			PrintWriter write = new PrintWriter(bw);
			
			write.println();
			write.printf("%d", money);
			
			write.flush();
			write.close();
			
			filePath = application.getRealPath("/WEB-INF/member/"+number+".txt");
			reader = new BufferedReader(new FileReader(filePath));
			
			str = reader.readLine();
			str = reader.readLine();
			
			String[] info = str.split("\t");
			sqi_count = Integer.parseInt(info[0]);
			inji_count = Integer.parseInt(info[1]);
			cobi_count = Integer.parseInt(info[2]);
			sam_count = Integer.parseInt(info[3]);
			i_count = Integer.parseInt(info[4]);
			
			sqi_count += sqi_number;
			inji_count += inji_number;
			cobi_count += cobi_number;
			sam_count += sam_number;
			i_count += i_number;
			
			BufferedWriter bw2 = new BufferedWriter(new FileWriter(filePath));
			PrintWriter writer2 = new PrintWriter(bw2);
			
			writer2.println();
			writer2.printf("%d\t%d\t%d\t%d\t%d", sqi_count, inji_count, cobi_count, sam_count, i_count);
			
			writer2.flush();
			writer2.close();
		} catch(Exception e){
			e.printStackTrace();
		} 
		out.println("<script>location.href='index.jsp';</script>");
		// response.sendRedirect("index.jsp");
	%>
</body>
</html>