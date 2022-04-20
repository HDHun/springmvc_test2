package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.junefw.infra.common.util.UtilDateTime;
import com.junefw.infra.common.util.UtilUpload;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	MemberDao dao;

	
//member
	@Override
	public int insert(Member dto) throws Exception {
		 dto.setRegDateTime(UtilDateTime.nowDate());
		 dto.setModDateTime(UtilDateTime.nowDate());
		 dao.insert(dto);
		
		return 1;
	}

	@Override
	public int update(Member dto) throws Exception {
//		  dao.updateAddress(dto);
//		  dao.updateEmail(dto);
//		  dao.updatePhone(dto);
		return dao.update(dto);
	}

	@Override
	public int insertAuth(Member dto) throws Exception {
		
		/*
		 * int j = 0; for(MultipartFile multipartFile1 : dto.file1) { String pathModule
		 * = this.getClass().getSimpleName().toString().toLowerCase().replace(
		 * "serviceImpl", ""); UtilUpload.upload(multipartFile1, pathModule, dto);
		 * 
		 * }
		 */
		
		
		return dao.insertAuth(dto);
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
	public int Uelete(MemberVo vo) throws Exception {
		return dao.Uelete(vo);
	}

	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
//email
	@Override
	public int insertEmail(Member dto) throws Exception {
		
		return dao.insertEmail(dto);
	}

	@Override
	public int updateEmail(Member dto) throws Exception {
		
		return dao.updateEmail(dto);
	}
// phone
	@Override
	public int insertPhone(Member dto) throws Exception {
		
		return dao.insertPhone(dto);
	}


	@Override
	public int updatePhone(Member dto) throws Exception {
		
		return dao.updatePhone(dto);
	}
// address	
	@Override
	public int insertAddress(Member dto) throws Exception {
		
		return dao.insertAddress(dto);
	}

	@Override
	public int updateAddress(Member dto) throws Exception {
	
		return dao.updateAddress(dto);
	}
//login
	@Override
	public Member selectOneLogin(Member dto) throws Exception {
		
		return dao.selectOneLogin(dto);
	}
	@Override
	public Member selectOneLogout(Member dto) throws Exception {
		
		return dao.selectOneLogout(dto);
	}

	
	

	
	}
