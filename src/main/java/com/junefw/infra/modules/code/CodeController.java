package com.junefw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class CodeController {
	
	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping(value = "/code/codeGroupList" /*method = RequestMethod.POST*/)
	public String codeGroupList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		int count = service.selectOneCount(vo);
		vo.setParamsPaging(count);
		if(count !=0) {
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);}
		else {
			/* @modelAttribute("vo") = model.attribute("vo",vo) */
		}
		return "code/codeGroupList";}
	
	  @RequestMapping(value = "/code/codeGroupForm") 
	  public String codeGroupForm(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		  Code item = service.selectOne(vo);
				  
		  return "code/codeGroupForm"; }

	
	 // to.jsp = modelAttribute
	 // to. method = redirect
	
	@RequestMapping(value = "/code/codeGroupInst")
	public String codeGroupInst(CodeVo vo, Code dto, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		System.out.println("dto.getifcgSeq" + dto.getIfcgSeq());
		
		redirectAttributes.addAttribute("ifcgSeq", dto.getIfcgSeq());
		redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		redirectAttributes.addAttribute("shOption", vo.getShOption());
		redirectAttributes.addAttribute("shValue", vo.getShValue());
		
		 return "redirect:/code/codeGroupView"; 
		/*
		 * return "redirect:/code/codeGroupView?ifcgSeq=" + dto.getIfcgSeq() +
		 * makeQueryString(vo);
		 */		/*"&thisPage=" + vo.getThisPage() +
				"&shOption=" + vo.getShOption() +
				"&shValue=" + vo.getShValue();*/
	}
	public String makeQueryString (CodeVo vo) {
		String tmp = "&thisPage=" + vo.getThisPage() +
					 "&shOption=" + vo.getShOption() +
					 "&shValue=" + vo.getShValue();
		return tmp;
	}
	
	
	@RequestMapping(value = "/code/codeGroupView")
	public String codeGroupView(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
	// 디비까지 가서 한 건의 데이터를 가져온다.
	Code item = service.selectOne(vo);
	
	model.addAttribute("item", item);
	
	return "code/codeGroupView";	
	}

	
	@RequestMapping(value = "/code/codeGroupForm2") public String
	codeGroupForm2(CodeVo vo, Model model) throws Exception {
	Code item = service.selectOne(vo);
	model.addAttribute("item", item); 
	return "code/codeGroupForm2"; }
	  
	  
	
	  @RequestMapping(value = "/code/codeGroupUpdt") public String
	  codeGroupUpdt(Code dto, CodeVo vo) throws Exception {
		  service.update(dto); 
		  return "redirect:/code/codeGroupView?ifcgSeq=" + dto.getIfcgSeq() + makeQueryString(vo); 
	  }
	  
	  @RequestMapping(value = "/code/codeGroupDele") public String
	  codeGroupDele(CodeVo vo, RedirectAttributes redirectAttributes) throws Exception {
		  service.delete(vo);
		  
		  redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		  redirectAttributes.addAttribute("shOption", vo.getShOption());
		  redirectAttributes.addAttribute("shValue", vo.getShValue());
		  
			
		  return "redirect:/code/codeGroupList";
		  }
	  @RequestMapping(value = "/code/codeGroupNele") public String
	  codeGroupNele(CodeVo vo, RedirectAttributes redirectAttributes) throws Exception {
		  service.updateDelete(vo);
		  
		  redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		  redirectAttributes.addAttribute("shOption", vo.getShOption());
		  redirectAttributes.addAttribute("shValue", vo.getShValue());
		  
		  
		  return "redirect:/code/codeGroupList";
	  }

	  
	  
	  
	  
	  
	  
	  
//  code
	  @RequestMapping(value = "/code/codeForm") 
	  public String codeForm(CodeVo vo,Model model) throws Exception {  
		List<Code> list = service.selectListCode(vo);
		model.addAttribute("list",list);
		return "code/codeForm";
		}
	  
	  
	  @RequestMapping(value = "/code/codeForm2") public String codeForm2(CodeVo vo,
			  Model model) throws Exception {
		  
		  Code item = service.selectOneCode(vo);
		  
		  model.addAttribute("item", item);
		  
		  return "code/codeForm2"; }
	  
	  @RequestMapping(value = "/code/codeList")
		public String codeList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
			int codeCount = service.selectOneCodeCount(vo);
					vo.setParamsPaging(codeCount);
			if(codeCount !=0) {
			List<Code> list = service.selectListCode(vo);
			model.addAttribute("list", list);}
			else {
				/* @modelAttribute("vo") = model.attribute("vo",vo) */
			}
			return "code/codeList";}
		
		@RequestMapping(value = "/code/codeInst")
		public String codeInst(Code dto) throws Exception {
			
			// 입력이 되어야 함
			service.insertCode(dto);
			
			return "redirect:/code/codeList";
		}
		@RequestMapping(value = "/code/codeView")
		public String codeView(CodeVo vo, Model model) throws Exception {
			
			System.out.println("vo.getIfcdSeq(): " + vo.getIfcdSeq());
			
			// 디비까지 가서 한 건의 데이터를 가져온다.
			Code item = service.selectOneCode(vo);
			
			// jsp로 데이터를 넘겨준다
			model.addAttribute("item", item);
			
			return "code/codeView";
		}
		
	  @RequestMapping(value = "/code/codeUpdt") public String
	  codeUpdt(Code dto) throws Exception {
		  
		  service.updateCode(dto); 
		  return "redirect:/code/codeView?ifcdSeq=" +dto.getIfcdSeq(); }
	  
	 
}