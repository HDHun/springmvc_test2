package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	 @RequestMapping(value = "/member/memberInst")
	  public String memberInst(Member dto) throws Exception {
		  
		  // 입력이 되어야 함
		  service.insertCode(dto);
		  
		  return "redirect:/member/memberList";
	  }
	  
	  @RequestMapping(value = "/member/memberView")
	  public String memberView(MemberVo vo, Model model) throws Exception {
		  
		  System.out.println("vo.getIfmmSeq(): " + vo.getIfmmSeq());
		  
		  // 디비까지 가서 한 건의 데이터를 가져온다.
		  Member item = service.selectOneCode(vo);
		  
		  // jsp로 데이터를 넘겨준다
		  model.addAttribute("item", item);
		  
		  return "member/memberView";
	  }
	  @RequestMapping(value = "/member/memberForm") 
	  public String memberForm(Model model) throws Exception {
		  
		  List<Member> list = service.selectListCode();
		  model.addAttribute("list",list);
		  return "member/memberForm"; 
	  }
	  
	  
	  @RequestMapping(value = "/member/memberForm2") public String memberForm2(MemberVo vo,
	  Model model) throws Exception {
	  
	  Member item = service.selectOneCode(vo);
	  
	  model.addAttribute("item", item);
	  
	  return "member/memberForm2"; }
	 
	
	 
	 
	  @RequestMapping(value = "/member/memberUpdt") public String
	  memberUpdt(Member dto) throws Exception {
		  
		  service.updateCode(dto); return "redirect:/member/memberView?ifmmSeq=" +dto.getIfmmSeq(); }
	  
	  @RequestMapping(value = "/member/memberList")
	  public String memberList(Model model) throws Exception {
		  
		  List<Member> list = service.selectListCode();
		  
		  model.addAttribute("list", list);
		  
		  return "member/memberList";
	  }
	}
