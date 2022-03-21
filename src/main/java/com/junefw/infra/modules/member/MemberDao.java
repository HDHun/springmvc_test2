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

	

	
	
	public List<Member> selectListCode() { List<Member> list = sqlSession.selectList(namespace + ".selectListCode",""); return list;}
	
	public int insertCode(Member dto) {return sqlSession.insert(namespace + ".insertCode", dto);}
	
	public Member selectOneCode(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOneCode", vo);}
	
	public int updateCode(Member dto) {return sqlSession.update(namespace + ".updateCode", dto);}
	
	
	
	
	
	
}