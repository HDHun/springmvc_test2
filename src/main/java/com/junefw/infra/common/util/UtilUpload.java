package com.junefw.infra.common.util;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import com.junefw.infra.common.constants.Constants;
import com.junefw.infra.modules.member.Member;

public class UtilUpload {
	
	public static void upload (MultipartFile multipartFile1, String className, Member dto) throws Exception {
		
		String fileName = multipartFile1.getOriginalFilename();
		String ext = fileName.substring(fileName.lastIndexOf(".")+1);
		String uuid = UUID.randomUUID().toString();
		String uuidFileName= uuid + "." +ext;
		String pathModule = uuid + "." + ext;
		String nowString = UtilDateTime.nowString();
		String pathDate = nowString.substring(0, 4) + "/" + nowString.substring(5, 7) + "/" + nowString.substring(8, 10);
		String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
		System.out.println(path);
		
		
		createPath(path);
		
		multipartFile1.transferTo(new File(path + uuidFileName));
		
		
	}

	public static void createPath (String path) {
		File uploadPath = new File(path);
		
		if (!uploadPath.exists()) {
			uploadPath.mkdir();
		} else {
			// by pass
		}
	}

}
