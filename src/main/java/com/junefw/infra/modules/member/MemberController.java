package com.junefw.infra.modules.member;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.scribejava.core.model.OAuth2AccessToken;
 
import com.junefw.infra.common.constants.Constants;
import com.junefw.infra.common.util.UtilDateTime;
import com.junefw.infra.modules.code.Code;
import com.junefw.infra.modules.naver.NaverLoginBO;



@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	

	
	
	
	@RequestMapping(value = "/member/memberList" /*method = RequestMethod.POST*/)
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model, Code code) throws Exception {
		System.out.println("UtilDateTime.nowLocalDateTime()" + UtilDateTime.nowLocalDateTime());
		System.out.println("UtilDateTime.nowDate()"+UtilDateTime.nowDate());
		System.out.println("UtilDateTime.nowString()"+UtilDateTime.nowString());
		
		 
		vo.setShDateStart(vo.getShDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : UtilDateTime.addStringTime(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : UtilDateTime.addStringTime(vo.getShDateEnd()));

		
		vo.setShOptionDate(vo.getShOptionDate() == null ? 0 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : UtilDateTime.addNowTimeString(vo.getShDateEnd()));
		
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
		 
		  
		  System.out.println("UtilDateTime.nowDate()"+UtilDateTime.nowDate());
		  
		  
			/*
			 * MultipartFile multipartFile = dto.getFile();
			 * 
			 * System.out.println("dto.getFile():" + dto.getFile());
			 * 
			 * String fileName = multipartFile.getOriginalFilename(); String ext =
			 * fileName.substring(fileName.lastIndexOf(".")+1); String uuid =
			 * UUID.randomUUID().toString(); String uuidFileName= uuid + "." +ext;
			 * 
			 * 
			 * multipartFile.transferTo(new File(
			 * "C:/factory/ws_sts_4130/springmvc_test2/src/main/webapp/resources/uploaded/"
			 * + uuidFileName));
			 * 
			 * 
			 * dto.setIfatOriginalFileName(fileName); dto.setIfatUuidFileName(uuidFileName);
			 * 
			 * service.insertAuth(dto);
			 */
			  
			
		
		  return "redirect:/member/memberList";
	  }
	  
	  @RequestMapping(value = "/member/memberView")
	  public String memberView(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		  
		  System.out.println("vo.getIfmmSeq(): " + vo.getIfmmSeq());
		  // 디비까지 가서 한 건의 데이터를 가져온다.
		  Member item = service.selectOne(vo);
		  // jsp로 데이터를 넘겨준다
		  model.addAttribute("item", item);
		  
		  return "member/memberView";
	  }
	  @RequestMapping(value = "/member/memberView2")
	  public String memberView2() throws Exception {
		  
		  
		  return "member/memberView2";
	  }
	  
	  @RequestMapping(value = "/member/memberView3")
	  public String memberView3() throws Exception {
		  
		  
		  return "member/memberView3";
	  }
	  
	  @RequestMapping(value = "/member/memberForm") 
	  public String memberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		  
		  
		Member list = service.selectOne(vo);
		  
		
		/*
		 * model.addAttribute("codeGender", CodeServiceImpl.selectListCachedCode("16"));
		 */  
		return "member/memberForm"; 
		
		  
	  }
	
	  
	  
	  @RequestMapping(value = "/member/memberForm2")
	  public String memberForm2(MemberVo vo, Model model) throws Exception {
	  
	  Member item = service.selectOne(vo);
	  
	  model.addAttribute("item", item);
	  
	  return "member/memberForm2"; }
	 
	
	 
	 
	  @RequestMapping(value = "/member/memberUpdt") 
	  public String memberUpdt(Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		  
		  service.update(dto); 
		  service.updateAddress(dto); 
		  service.updateEmail(dto);
		  service.updatePhone(dto);
		 
		  System.out.println("vo.ifmmSeq :" + vo.getIfmmSeq());
			/*
			 * return "redirect:/member/memberView?ifmmSeq=" +dto.getIfmmSeq();
			 */
		  
		  
		  redirectAttributes.addFlashAttribute("vo", vo);
		  return "redirect:/member/memberView"; 
		  
	  }
	  @RequestMapping(value = "/member/MemberMultiUele") public String
	  memberMultiUele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {

		  String[] checkboxSeqArray = vo.getCheckboxSeqArray();
		  System.out.println("vo.getCheckboxSeqArray():" + vo.getCheckboxSeqArray());
		  for(String checkboxSeq : checkboxSeqArray) {
			  vo.setIfmmSeq(checkboxSeq);
			  service.Uelete(vo);
		  }
		  
		  
		  
		  
		  return "redirect:/member/memberList";
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
			 
		  
		  return "redirect:/member/memberList";
	  }
	  
	  
	  
	  @RequestMapping(value = "/member/logIn") 
	  public String logIn(HttpServletRequest httpServletRequest) throws Exception{
		 
		  return "member/logIn"; 
		  
		  
	  }
	  @RequestMapping(value = "/member/logInForm") 
	  public String logInForm(HttpServletRequest httpServletRequest) throws Exception{
		  
		  return "member/logInForm"; 
		  
		  
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
	  		returnMap.put("rt","success");
	  		
	  		return returnMap;
	  	}

	  	@RequestMapping(value ="/rest/memberView")
		public String memberView(Model model) throws Exception {
			
			String apiUrl = "http://localhost:8021/infra/rest/member/3";
			
			URL url = new URL(apiUrl);
				
			HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
			httpURLConnection.setRequestMethod("GET");
			
			BufferedReader bufferedReader ;
			if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <=300) {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
			} else {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
			}
			
			StringBuilder stringBulider = new StringBuilder();
			String line;
			while ((line = bufferedReader.readLine()) != null) {
				stringBulider.append(line);
			}
			bufferedReader.close();
			httpURLConnection.disconnect();
			
			System.out.println("final line:" + stringBulider.append(line));

			ObjectMapper objectMapper = new ObjectMapper();
			Member member = objectMapper.readValue(stringBulider.toString() , Member.class);
			
			model.addAttribute("item", member);
			
			
			
			
			
			
			
			
			
			
			return "rest/memberView";
		}
	  	@RequestMapping(value ="/rest/memberList2")
	  	public String memberList2(Model model) throws Exception {
	  		
	  		String apiUrl = "http://localhost:8021/infra/rest/member";
	  		
	  		URL url = new URL(apiUrl);
	  		
	  		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
	  		httpURLConnection.setRequestMethod("GET");
	  		
	  		BufferedReader bufferedReader ;
	  		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <=300) {
	  			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
	  		} else {
	  			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
	  		}
	  		
	  		StringBuilder stringBulider = new StringBuilder();
	  		String line;
	  		while ((line = bufferedReader.readLine()) != null) {
	  			stringBulider.append(line);
	  		}
	  		bufferedReader.close();
	  		httpURLConnection.disconnect();
	  		
	  		System.out.println("final line:" + stringBulider.append(line));
	  		
	  		ObjectMapper objectMapper = new ObjectMapper();
	  		List<Member> memberList2 = objectMapper.readValue(stringBulider.toString() , new TypeReference<List<Member>>() {
			});
	  		
	  		model.addAttribute("list", memberList2);
	  		
	  		
	  		
	  		
	  		return "rest/memberList2";
	  	}
	  	@RequestMapping(value ="/rest/memberList2Node")
	  	public String memberList2Node(Model model) throws Exception {
	  		
	  		
	String apiUrl = "http://apis.data.go.kr/1471000/FoodAdtvInfoService01/getFoodAdtvInfoList01?ServiceKey=eoLiJjWSUtO62Vvw6W7XO69l9kgmZMZrY7tbSCFtHR311cFZx6d064w0t7mP%2B5eYGjD0u0vd%2FHcKGeboLIjjfQ%3D%3D&numOfRows=3&pageNo=1&type=json";
			
			URL url = new URL(apiUrl);
			HttpURLConnection httpURLConnection =(HttpURLConnection) url.openConnection();
			httpURLConnection.setRequestMethod("GET");
			
			BufferedReader bufferedReader;
			if(httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <=300) {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
			}else {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
			}
			
			StringBuilder stringBuilder = new StringBuilder();
			String line; 
			while((line = bufferedReader.readLine()) != null) {
				System.out.println("line : "+line);
				stringBuilder.append(line);
			}
			
			bufferedReader.close();
			httpURLConnection.disconnect();
	  		
	  		ObjectMapper objectMapper = new ObjectMapper();
	  		JsonNode node = objectMapper.readTree(stringBuilder.toString());
	  		
	  		System.out.println("node.get(\"header\").get(\"resultCode\").asText()" + node.get("header").get("resultCode").asText());
	  		System.out.println("node.get(\"header\").get(\"resultCode\").asText()" + node.get("header").get("resultMsg").asText());
	  		System.out.println("node.get(\"header\").get(\"resultCode\").asText()" + node.get("body").get("items").get(0).get("PC_KOR_NM").asText());
	  		
	  		model.addAttribute("node", node);
	  		
	  		
	  		
	  		return "rest/memberList2Node";
	  	}

	  	
		@RequestMapping(value = "/rest/getFoodAdtvInfoList")
		public String getFoodAdtvInfoList(Model model) throws Exception {
			
//			api 호출해서 값을 가져온다.
			String apiUrl = "http://apis.data.go.kr/1471000/FoodAdtvInfoService01/getFoodAdtvInfoList01?ServiceKey=eoLiJjWSUtO62Vvw6W7XO69l9kgmZMZrY7tbSCFtHR311cFZx6d064w0t7mP%2B5eYGjD0u0vd%2FHcKGeboLIjjfQ%3D%3D&numOfRows=3&pageNo=1&type=json";
			
			URL url = new URL(apiUrl);
			HttpURLConnection httpURLConnection =(HttpURLConnection) url.openConnection();
			httpURLConnection.setRequestMethod("GET");
			
			BufferedReader bufferedReader;
			if(httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <=300) {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
			}else {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
			}
			
			StringBuilder stringBuilder = new StringBuilder();
			String line; 
			while((line = bufferedReader.readLine()) != null) {
				System.out.println("line : "+line);
				stringBuilder.append(line);
			}
			
			bufferedReader.close();
			httpURLConnection.disconnect();
			
			System.out.println("final line : "+stringBuilder.append(line));
			
//			json object + array string -> java map
			
			ObjectMapper objectMapper = new ObjectMapper();
			Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
			
			System.out.println("#####Map");
			for(String key : map.keySet()) {
				String value = String.valueOf(map.get(key));
				System.out.println("[key]: "+key + ", [value]: " + value);
			}
			
			Map<String, Object> header = new HashMap<String, Object>();
			header = (Map<String, Object>)map.get("header");
			
			System.out.println("#####Header");
			for(String key : header.keySet()) {
				String value = String.valueOf(header.get(key));
				System.out.println("[key]: "+key + ", [value]: " + value);
			}
			System.out.println("header.get(\"resultCode\") : "+header.get("resultCode"));
			System.out.println("header.get(\"resultMsg\") : "+header.get("resultMsg"));
			
			Map<String, Object> body = new HashMap<String, Object>();
			body = (Map<String, Object>)map.get("body");
			
			List<Home> items = new ArrayList<Home>();
			items = (List<Home>) body.get("items");
			
			System.out.println("items.size() : "+items.size());
			
			for(int i=0; i < items.size(); i++) {
				
			}
//			map X
			
//			header -> java 객체 (Home)
			
//			body -> java 객체 (Home)
			
//			item -> java 객체 (Home)
			
			model.addAllAttributes(header);
			model.addAllAttributes(body);
			
			return "/rest/getFoodAdtvInfoList";
		}
		
	  
}
	

