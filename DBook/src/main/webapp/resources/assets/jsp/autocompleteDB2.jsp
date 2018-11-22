<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="org.json.simple.JSONObject"%>
<%@ page import="org.json.simple.JSONArray"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>

<% 
        boolean result = false; 
        request.setCharacterEncoding("utf-8"); 
        java.sql.Connection conn = null; 
        java.sql.PreparedStatement pstmt = null; 
        java.sql.ResultSet rs = null; 
        java.util.ArrayList<String> list = new java.util.ArrayList<String>();
 
        try { 
           String search_word = (request.getParameter("term") == null?"":request.getParameter("term"));   
           Class.forName("oracle.jdbc.driver.OracleDriver"); 
           //conn = java.sql.DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
           conn = java.sql.DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
           
           String sql = "select book_name, author from book where book_name like ? or author like ? ";
    
           pstmt = conn.prepareStatement(sql); 
    
           pstmt.setString(1, "%"+search_word+"%");
           pstmt.setString(2, "%"+search_word+"%");
           
    
           rs = pstmt.executeQuery(); 
    
           rs.next();
           
           while(rs.next()) { 
               list.add(rs.getString(1));
           } 
          
           JSONArray arrayObj = new JSONArray();
           
           for(String str : list) {
               arrayObj.add(str);
               if(arrayObj.size() > 9){
            	   break;
               }
           }
          
           out.println(arrayObj.toString());
           
       }  catch (Exception e) { 
           e.printStackTrace();
       }  finally {
           try {
              conn.close();
           } catch (Exception e) {
              e.printStackTrace();  
           }           
       }
%> 