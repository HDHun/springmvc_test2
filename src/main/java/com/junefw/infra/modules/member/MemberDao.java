package com.junefw.infra.modules.member;



import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


import com.junefw.infra.modules.member.Member;
import com.junefw.infra.modules.member.MemberVo;

@Repository
public class MemberDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.junefw.infra.modules.member.MemberMpp";

	@Inject
	@Resource(name = "sqlSessionOracle")
	private SqlSession sqlSessionOracle;

	public List<Member> selectListOracle(MemberVo vo) { List<Member> list = sqlSession.selectList(namespace + ".selectListOracle",vo); return list;}
	
	
	public List<Member> selectList(MemberVo vo) { List<Member> list = sqlSession.selectList(namespace + ".selectList",vo); return list;}
	
	public int insert(Member dto) {return sqlSession.insert(namespace + ".insert", dto);}
	public int insertRest(Member dto) {return sqlSession.insert(namespace + ".insertRest", dto);}
	
	public Member selectOne(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo);}
	
	public int update(Member dto) {return sqlSession.update(namespace + ".update", dto);}
	
	
	public int selectOneCount(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo);}
	
	
	public int delete(MemberVo vo) {return sqlSession.delete(namespace + ".delete", vo);}
	
	public int updateDelete(MemberVo vo) {return sqlSession.update(namespace + ".updateDelete", vo);}
	
		//email
		public int insertEmail(Member dto) {return sqlSession.insert(namespace + ".insertEmail", dto);}
		public int updateEmail(Member dto) {return sqlSession.update(namespace + ".updateEmail", dto);}
		
		// address
		public int insertAddress(Member dto) {return sqlSession.insert(namespace + ".insertAddress", dto);}
		public int updateAddress(Member dto) {return sqlSession.update(namespace + ".updateAddress", dto);}
		
		// phone
		public int insertPhone(Member dto) {return sqlSession.insert(namespace + ".insertPhone", dto);}
		public int updatePhone(Member dto) {return sqlSession.update(namespace + ".updatePhone", dto);}
		//checkbox
		public int Uelete(MemberVo vo) {return sqlSession.update(namespace + ".Uelete", vo);}
		
		//auth
		
		  public int insertAuth(Member dto) {return sqlSession.insert(namespace +".insertAuth", dto);}
		 
		
		
		//login
		public Member selectOneLogin(Member dto) { return sqlSession.selectOne(namespace + ".selectOneLogin", dto);}
		public Member selectOneLogout(Member dto) { return sqlSession.selectOne(namespace + ".selectOneLogout", dto);}
}