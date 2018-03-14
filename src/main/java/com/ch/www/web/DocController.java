package com.ch.www.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.invoke.MethodHandles.Lookup;
import java.util.Date;

import javax.persistence.PostRemove;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.httpclient.Header;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.ch.www.domain.TbDoc;
import com.ch.www.service.impl.DocServiceLmpl;
import com.ch.www.vo.UserVO;
import com.sun.mail.util.logging.MailHandler;
@Controller
public class DocController {
	 @Autowired
	 @Qualifier("docservice")
	 private DocServiceLmpl dsl;
   
	//跳转页面
	@RequestMapping("doc/selectDocument")
	public String show(){
		
		return "/document/document";	
	}
	
	//跳转到添加页面
	@RequestMapping("doc/addDocument")
	public String addDocment(){
		
		return "/document/showAddDocument";
	}
	
	//查询
	@RequestMapping("docjson")
	@ResponseBody
	public UserVO<TbDoc> Lookup(String title){
	       
		return dsl.lookUp(title);	
	}
	
	//删除和批量删除
	@RequestMapping("doc/removeDocument")
	public String deleteAllOrID(Integer flag,Integer id,@RequestParam(value="ids[]",required=false)Integer[] ids){
	     if(flag==1){
	    	 dsl.deleteID(id);
	    	 return "/document/document";
	     }else{
	    	 dsl.deleteAll(ids);
	    	 return "/document/document";
	     }
	     
	}
	//上传
	@RequestMapping("doc/saveDocument")
	public String shangDoc(@RequestParam("file") CommonsMultipartFile file,String title,String remark,Integer uid,HttpServletResponse response){           
    	try {
    	//上传
          long  startTime=System.currentTimeMillis();
          //路径
          String path="H:/tmpe/"+new Date().getTime()+file.getOriginalFilename();
          //文件名
          String name=new Date().getTime()+""+file.getOriginalFilename();
          File newFile=new File(path);
			file.transferTo(newFile);
			long  endTime=System.currentTimeMillis();
			System.out.println("运行时间："+String.valueOf(endTime-startTime)+"ms");
			//添加进数据库
			if(dsl.add(title, remark, uid,name)){
				  response.getWriter().print(1);
			}else{
				 response.getWriter().print(0);
			}
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
          return null;
	}
	
	//下载
	@RequestMapping("doc/downloadDocument")
	public ResponseEntity<byte[]> downloadDocument(String filename){
		//文件名以及文件所在的路径
		 File file = new File("H:/tmpe/",filename);
	 try {
		 //判断是否是个文件，是就继续，不是返回null;
	     if(file.exists()){
	    	 //获取头信息
		     HttpHeaders headers = new HttpHeaders();
		     //进行编码格式转换
			 String string = new String(file.getName().getBytes("UTF-8"),"ISO-8859-1");
			 //在响应头中设置要下载的文件的详细信息
			 headers.setContentDispositionFormData("attachment", string);
			 //设置文件内容是什么流的形式
			 headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
			 //FileUtils.readFileToByteArray(file):将file变成byte[].
			 return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),headers,HttpStatus.OK);
	       }
		      
	     } catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} catch (IOException e) {
			  e.printStackTrace();
		    }
		  return null;	
	}
 }
	
