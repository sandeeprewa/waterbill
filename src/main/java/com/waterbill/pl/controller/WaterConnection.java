package com.waterbill.pl.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

import org.apache.commons.io.IOUtils;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.waterbill.domain.Person;

@Controller
public class WaterConnection {
	
	@RequestMapping(value="/waterConnection", method=RequestMethod.POST, produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public Person createNewConnection(MultipartHttpServletRequest request) throws IOException{

		
		String saveDirectory = "e:/image/";
	     
		 MultipartFile multipartFile = request.getFile("file[0]");
	        Long size = multipartFile.getSize();
	        System.out.println(multipartFile.getOriginalFilename() );
	        String contentType = multipartFile.getContentType();
	        InputStream stream = multipartFile.getInputStream();
	        
	        multipartFile
	        .transferTo(new File(saveDirectory + multipartFile.getOriginalFilename()));
	        byte[] bytes = IOUtils.toByteArray(stream);
	        

	        MultipartFile multipartFile1 = request.getFile("file[1]");
	        Long size1 = multipartFile1.getSize();
	        System.out.println(multipartFile1.getOriginalFilename() );
	        String contentType1 = multipartFile1.getContentType();
	        InputStream stream1 = multipartFile1.getInputStream();
	        
	        multipartFile1
	        .transferTo(new File(saveDirectory + multipartFile1.getOriginalFilename()));
	        byte[] bytes1 = IOUtils.toByteArray(stream1);
	        
	        System.out.println(request.getParameter("customer_name"));
	        
	        Person p1= new Person();
	        p1.setPersonId("12");
	        p1.setPersonName("YTE");
	        p1.setPersonAddress("sds");
	        return p1;
	}


	@RequestMapping(value="/waterConnection", method=RequestMethod.PUT, produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public Person updateNewConnection(MultipartHttpServletRequest request) throws IOException{

		
		String saveDirectory = "e:/image/";
	     
		 MultipartFile multipartFile = request.getFile("file[0]");
	        Long size = multipartFile.getSize();
	        System.out.println(multipartFile.getOriginalFilename() );
	        String contentType = multipartFile.getContentType();
	        InputStream stream = multipartFile.getInputStream();
	        
	        multipartFile
	        .transferTo(new File(saveDirectory + multipartFile.getOriginalFilename()));
	        byte[] bytes = IOUtils.toByteArray(stream);
	        

	        MultipartFile multipartFile1 = request.getFile("file[1]");
	        Long size1 = multipartFile1.getSize();
	        System.out.println(multipartFile1.getOriginalFilename() );
	        String contentType1 = multipartFile1.getContentType();
	        InputStream stream1 = multipartFile1.getInputStream();
	        
	        multipartFile1
	        .transferTo(new File(saveDirectory + multipartFile1.getOriginalFilename()));
	        byte[] bytes1 = IOUtils.toByteArray(stream1);
	        
	        System.out.println(request.getParameter("customer_name"));
	        
	        Person p1= new Person();
	        p1.setPersonId("12");
	        p1.setPersonName("YTE");
	        p1.setPersonAddress("sds");
	        return p1;
	}

}
