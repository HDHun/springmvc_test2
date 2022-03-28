package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.junefw.infra.common.util.UtilDateTime;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberDao dao;

	

	@Override
	public int insert(Member dto) throws Exception {
		dao.insert(dto);
		dto.setRegDateTime(UtilDateTime.nowDate());
		dto.setModDateTime(UtilDateTime.nowDate());
		return 1;
	}

	@Override
	public int update(Member dto) throws Exception {
		
		return dao.update(dto);
	}

	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		return dao.selectList(vo);
	}

	@Override
	public int delete(MemberVo vo) throws Exception {
		return dao.delete(vo);
	}

	@Override
	public int updateDelete(MemberVo vo) throws Exception {
		return dao.updateDelete(vo);
	}

	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	
	

	
	}
