package com.junefw.infra.modules.member;

import java.util.List;



public interface MemberService {
	

	
	
	int insert(Member dto) throws Exception;
	int insertEmail(Member dto) throws Exception;
	int insertAddress(Member dto) throws Exception;
	int insertPhone(Member dto) throws Exception;
	int update(Member dto) throws Exception; 
	Member selectOne(MemberVo vo) throws Exception;
	List<Member> selectList(MemberVo vo) throws Exception;
	int delete(MemberVo vo) throws Exception; 
	int updateDelete(MemberVo vo) throws Exception; 
	int Uelete(MemberVo vo) throws Exception; 
	int selectOneCount(MemberVo vo) throws Exception;
	
	
	
	
	
	
}