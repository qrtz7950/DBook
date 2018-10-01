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
           String first_name = (request.getParameter("term") == null 
?"" 
 :request.getParameter("term"));   
           Class.forName("oracle.jdbc.driver.OracleDriver"); 
           conn = java.sql.DriverManager
           .getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr"); 
           String sql = "select first_name from employees where first_name like ? "; 
    
           pstmt = conn.prepareStatement(sql); 
    
           pstmt.setString(1, "%"+first_name+"%"); 
    
           rs = pstmt.executeQuery(); 
    
           while(rs.next()) { 
               list.add(rs.getString(1));
           } 
          
           JSONArray arrayObj = new JSONArray();
           
           for(String str :  list) {
               arrayObj.add(str);
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