package com.junefw.infra.modules.member;

import java.util.List;



public interface MemberService {
	

	
	//member
	int insert(Member dto) throws Exception;
	List<Member> selectList(MemberVo vo) throws Exception;
	int delete(MemberVo vo) throws Exception; 
	int updateDelete(MemberVo vo) throws Exception; 
	int Uelete(MemberVo vo) throws Exception; 
	int selectOneCount(MemberVo vo) throws Exception;
	int update(Member dto) throws Exception; 
	Member selectOne(MemberVo vo) throws Exception;
	
	Member selectOneLogin(Member dto) throws Exception;
	Member selectOneLogout(Member dto) throws Exception;
	
	//email
	int insertEmail(Member dto) throws Exception;
	int updateEmail(Member dto) throws Exception; 
	//phone
	int insertPhone(Member dto) throws Exception;
	int updatePhone(Member dto) throws Exception; 
	//address
	int insertAddress(Member dto) throws Exception;
	int updateAddress(Member dto) throws Exception; 
	
	
	
}