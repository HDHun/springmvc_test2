package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberDao dao;

	@Override
	public List<Member> selectListCode() throws Exception {
		return dao.selectListCode();
	}

	@Override
	public int insertCode(Member dto) throws Exception {
		return dao.insertCode(dto);
	}

	@Override
	public int updateCode(Member dto) throws Exception {
		return dao.updateCode(dto);
	}

	@Override
	public Member selectOneCode(MemberVo vo) throws Exception {
		return dao.selectOneCode(vo);
	}

	

	}
