<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<%
   String account = request.getParameter("account");
   String password = request.getParameter("password");
   Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://140.120.49.205:3306/team8","team8","NCHUTeam8!");
      Statement st =con.createStatement();
      ResultSet rs;
      rs = st.executeQuery("select * from member where account='"+ account+"' and password='" + password + "'");
      if(rs.next()){
        session.setAttribute("account",account);
        out.println("登入成功!請稍後!");
        response.setHeader("Refresh","1, URL=data.jsp");

      }else{
        out.println("帳號密碼輸入錯誤!<a href='index.html'> 重新輸入</a>");
      }
      rs.close();
      st.close();
      con.close();

      %>
