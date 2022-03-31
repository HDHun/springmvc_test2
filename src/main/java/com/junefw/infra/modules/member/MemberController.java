package com.junefw.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.junefw.infra.common.constants.Constants;
import com.junefw.infra.common.util.UtilDateTime;
import com.junefw.infra.modules.code.Code;



@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	

	
	
	
	@RequestMapping(value = "/member/memberList" /*method = RequestMethod.POST*/)
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model, Code code) throws Exception {
		System.out.println("UtilDateTime.nowLocalDateTime()" + UtilDateTime.nowLocalDateTime());
		System.out.println("UtilDateTime.nowDate()"+UtilDateTime.nowDate());
		System.out.println("UtilDateTime.nowString()"+UtilDateTime.nowString());
		
		 
		vo.setShDateStart(vo.getShDateStart() == null ? 
			UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), 
			Constants.DATE_INTERVAL) : UtilDateTime.addStringTime(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : UtilDateTime.addStringTime(vo.getShDateEnd()));

		int count = service.selectOneCount(vo);
		
		vo.setParamsPaging(count);
		
		if(count !=0) {
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);}
		else {
			/* @modelAttribute("vo") = model.attribute("vo",vo) */
		}
		return "member/memberList";}
	
	 @RequestMapping(value = "/member/memberInst")
	  public String memberInst(Member dto) throws Exception {
		  
		  // 입력이 되어야 함
		  service.insert(dto);
		  service.insertPhone(dto);
		  service.insertAddress(dto);
		  service.insertEmail(dto);
		  
		  return "redirect:/member/memberList";
	  }
	  
	  @RequestMapping(value = "/member/memberView")
	  public String memberView(MemberVo vo, Model model) throws Exception {
		  
		  System.out.println("vo.getIfmmSeq(): " + vo.getIfmmSeq());
		  // 디비까지 가서 한 건의 데이터를 가져온다.
		  Member item = service.selectOne(vo);
		  // jsp로 데이터를 넘겨준다
		  model.addAttribute("item", item);
		  
		  return "member/memberView";
	  }
	  
	  @RequestMapping(value = "/member/memberForm") 
	  public String memberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		  
		  
		Member list = service.selectOne(vo);
		  
		
		/*
		 * model.addAttribute("codeGender", CodeServiceImpl.selectListCachedCode("16"));
		 */  
		return "member/memberForm"; 
		
		  
	  }
	
	  
	  
	  @RequestMapping(value = "/member/memberForm2") public String memberForm2(MemberVo vo, Model model) throws Exception {
	  
	  Member item = service.selectOne(vo);
	  
	  model.addAttribute("item", item);
	  
	  return "member/memberForm2"; }
	 
	
	 
	 
	  @RequestMapping(value = "/member/memberUpdt") public String
	  memberUpdt(Member dto) throws Exception {
		  
		  service.update(dto); 
		  service.updateAddress(dto);
		  service.updateEmail(dto);
		  service.updatePhone(dto);
		  
	
			/*
			 * return "redirect:/member/memberView?ifmmSeq=" +dto.getIfmmSeq();
			 */		 
		  return "redirect:/member/memberList"; 
		  
	  }
	  @RequestMapping(value = "/member/MemberMultiUele") public String
	  memberMultiUele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {

		  String[] checkboxSeqArray = vo.getCheckboxSeqArray();
		  
		  for(String checkboxSeq : checkboxSeqArray) {
			  vo.setIfmmSeq(checkboxSeq);
			  service.Uelete(vo);
		  }
		  
		  
		  
		  
		  return "redirect:/member/MemberList";
	  }
	  
	 
	  
	  @RequestMapping(value = "/member/MemberDele") public String
				memberDele(MemberVo vo , RedirectAttributes redirectAttributes ) throws Exception {
		  service.delete(vo);
			
			  redirectAttributes.addAttribute("thisPage", vo.getThisPage());
			  redirectAttributes.addAttribute("shOption", vo.getShOption());
			  redirectAttributes.addAttribute("shValue", vo.getShValue());
			 
			
		  return "redirect:/member/MemberList";
		  }
	  @RequestMapping(value = "/member/MemberNele") public String memberNele(MemberVo vo , RedirectAttributes redirectAttributes ) throws Exception {
		  service.updateDelete(vo);
			
			  redirectAttributes.addAttribute("ifmmSeq", vo.getIfmmSeq());
			 
		  
		  return "redirect:/member/MemberList";
	  }
	  
	  
	  
	  @RequestMapping(value = "/member/logIn") 
	  public String logIn(HttpServletRequest httpServletRequest) throws Exception{
		 
		  return "member/logIn"; 
		  
		  
	  }
	  	@ResponseBody
		@RequestMapping(value = "/member/loginProc")
		public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
			Map<String, Object> returnMap = new HashMap<String, Object>();
			
			Member rtMember = service.selectOneLogin(dto);

			if(rtMember != null) {

				if(rtMember.getIfmmSeq() != null) {
					httpSession.setAttribute("sessSeq", rtMember.getIfmmSeq());
					httpSession.setAttribute("sessId", rtMember.getIfmmId());
					httpSession.setAttribute("sessName", rtMember.getIfmmName());
					
					returnMap.put("rt", "success");
				} else {
					returnMap.put("rt", "fail");
				}
			} else {
				returnMap.put("rt", "fail");
			}
			return returnMap;
		}
	  	@ResponseBody
	  	@RequestMapping(value = "/member/logoutProc")
	  	public Map<String, Object> logoutProc(Member dto, HttpSession httpSession) throws Exception {
	  		Map<String, Object> returnMap = new HashMap<String, Object>();
	  		httpSession.invalidate();

	  		
	  		return returnMap;
	  	}
	}
