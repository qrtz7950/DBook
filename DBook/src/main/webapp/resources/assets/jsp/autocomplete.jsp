<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%

	//DB에서 키워드를 가져와서 suggest.html에서 자동 완성..
	request.setCharacterEncoding("UTF-8");

	//jquery autocomplete플러그인 설정된 이름 'q'로 넘어온다. 그래서 값을 가지고 있는 파라미터 이름은 'q'
	String first_name = request.getParameter("q");
	
	if(first_name == null||first_name.equals("")){
		return;
	}
	
	first_name = first_name.toUpperCase();
	
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	List list = new ArrayList();
	try{

		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(url,"hr","hr");
		/* String sql = "select keyword from keyword where keyword LIKE ?"; */
		String sql = "select first_name from employees where first_name LIKE ? ";
		
		ps = con.prepareStatement(sql);
		ps.setString(1, first_name+"%" );
		rs = ps.executeQuery();
		while(rs.next()){
			list.add(rs.getString("first_name"));
		}//while
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(rs != null) try{rs.close();} catch(Exception e){}
		if(ps != null) try{ps.close();} catch(Exception e){}
		if(con != null) try{con.close();} catch(Exception e){}
		
	}//finally
	
	for(int i=0; i<list.size();i++){
		//out.print(list.get(i)+",");
		
		out.println(list.get(i)); //플러그인은 줄바꿈을 기준으로 인식
		System.out.println(list.get(i));
	}//for	
%>