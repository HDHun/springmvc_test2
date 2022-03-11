package com.junefw.infra.modules.member;

import java.util.List;


public interface MemberService {
	

	
public List<Member> selectListCode() throws Exception;
	
	public int insertCode(Member dto) throws Exception;
	
	public int updateCode(Member dto) throws Exception; 
	public Member selectOneCode(MemberVo vo) throws Exception;
	
}