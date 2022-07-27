package dao;

import org.apache.ibatis.session.SqlSession;

import dto.TestDTO;
import mybatis.SqlMapConfig;

public class TestDAO {
	SqlSession sqlsession;
	
	public TestDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);	//true시 오토커밋
	}
	
	public boolean insert(TestDTO test) {
		return sqlsession.insert("Test.insert",test)==1;
	}
	public TestDTO select(int num) {
		return sqlsession.selectOne("Test.select",num);
	}
}











