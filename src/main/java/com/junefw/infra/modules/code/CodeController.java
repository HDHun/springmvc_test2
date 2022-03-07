package com.junefw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping(value = "/code/codeGroupList")
	public String codeGroupList(Model model) throws Exception {

		List<Code> list = service.selectList();
		
		model.addAttribute("list", list);
		
		return "code/codeGroupList";
	}
	
	
	  @RequestMapping(value = "/code/codeGroupForm") public String codeGroupForm()
	  throws Exception {
	  
	  
	  return "code/codeGroupForm"; }
	 
	
	@RequestMapping(value = "/code/codeGroupInst")
	public String codeGroupInst(Code dto) throws Exception {
		
		// 입력이 되어야 함
		service.insert(dto);
		
		return "";
	}
	@RequestMapping(value = "/code/codeGroupView")
	public String codeGroupView(CodeVo vo, Model model) throws Exception {
		
		System.out.println("vo.getIfcgSeq():" + vo.getIfcgSeq());
		
		Code item = service.selectOne(vo);
		
		model.addAttribute("item", item);
		
		return "code/codeGroupView";
	}
	
	
	/*
	 * @RequestMapping(value = "/code/codeGroupForm") public String
	 * codeGroupForm(CodeVo vo, Model model) throws Exception {
	 * 
	 * Code item = service.selectOne(vo);
	 * 
	 * model.addAttribute("item", item);
	 * 
	 * return "code/codeGroupForm"; }
	 */
	
	  @RequestMapping(value = "/code/codeGroupUpdt") public String
	  codeGroupUpdt(Code dto) throws Exception {
	  
	  service.update(dto); return ""; }
	 
	 
}