package com.junefw.infra.modules.member;



import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


import com.junefw.infra.modules.member.Member;
import com.junefw.infra.modules.member.MemberVo;

@Repository
public class MemberDao {
	
	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.junefw.infra.modules.member.MemberMpp";

	

	
	
	public List<Member> selectList(MemberVo vo) { List<Member> list = sqlSession.selectList(namespace + ".selectList",vo); return list;}
	
	public int insert(Member dto) {return sqlSession.insert(namespace + ".insert", dto);}
	
	public Member selectOne(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo);}
	
	public int update(Member dto) {return sqlSession.update(namespace + ".update", dto);}
	
	
	public int selectOneCount(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo);}
	
	
	public int delete(MemberVo vo) {return sqlSession.delete(namespace + ".delete", vo);}
	
	public int updateDelete(MemberVo vo) {return sqlSession.update(namespace + ".updateDelete", vo);}
	
		//email
		public int insertEmail(Member dto) {return sqlSession.insert(namespace + ".insertEmail", dto);}
		
		// address
		public int insertAddress(Member dto) {return sqlSession.insert(namespace + ".insertAddress", dto);}
		
		// phone
		public int insertPhone(Member dto) {return sqlSession.insert(namespace + ".insertPhone", dto);}
		//checkbox
		public int Uelete(MemberVo vo) {return sqlSession.update(namespace + ".Uelete", vo);}
		
		
}