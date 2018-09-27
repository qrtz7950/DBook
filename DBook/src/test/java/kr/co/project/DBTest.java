package kr.co.project;

import javax.sql.DataSource;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.project.login.vo.LoginVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:config/spring/spring-mvc.xml"})
public class DBTest {
   
   @Autowired
   private DataSource ds;
   
   @Autowired
   private SqlSessionTemplate sqlSessionTemplate;
   
   @Test
   public void DB접속테스트() throws Exception {
      
//      Assert.assertNotNull(ds);
      Assert.assertNotEquals(null, ds);
      Assert.assertNotNull(ds.getConnection());
      Assert.assertNotNull(sqlSessionTemplate);
/*      
      System.out.println("ds : " + ds);
      
      Connection conn = ds.getConnection();
      
      System.out.println("sqlSession : " + sqlSessionTemplate);
*/      
   }
   
   @Test
   public void 로그인() throws Exception{
      
      LoginVO hehe = sqlSessionTemplate.selectOne("kr.co.project.login.dao.LoginDAO.test");
      
      System.out.println(hehe);
      
   }
}