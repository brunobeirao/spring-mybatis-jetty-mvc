package bruno.beirao.spring.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bruno.beirao.spring.mappers.UserMapper;
import bruno.beirao.spring.utils.MyBatisUtil;

public class UserService {

	public List<User> getUsers() {
		SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
		try {
			UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
			return userMapper.getUsers();
		} finally {
			sqlSession.close();
		}
	}

	public List<User> findUser(String search) {
		SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
		try {
			UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
			return userMapper.findUser("%" + search + "%");
		} finally {
			sqlSession.close();
		}
	}
}