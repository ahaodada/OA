# 人事管理OA
## 项目概述

> 主要是用来作为公司的员工查询以为公司内部的文档公告的上传，以及公司重要信息的发布，员工上下班打卡信息的收集，员工中心的管理为主，管理员可以上传文件，员工可以在中心去下载，为了方便公司内部人员管理的OA系统。

---
## 开发平台
   Windows
## 开发工具
   Eclipse+JDK 1.8+Tomcat 1.9+My SQL+Maven
   
---
## 开发技术
   主要是运用SpringMVC+Spring+Mybatis框架整合，前端利用bootstarp框架和layui来实现的网络布局，应用JQuery前端框架，以及利用Ajax实现页面局部刷新，利用JSON实现前后端的数据交互，利用SpringMVC自己的安全管理来进行权限管理，数据库方面用的是Mysql。
   
---   

## 主要模块
1. 用户管理
    - 用户查询 
    - 添加用户
2. 部门管理 
    - 部门查询
    - 部门添加
3. 职位管理
    - 职位查询
    - 职位添加
4. 员工管理
    - 员工查询
    - 添加员工
5. 公告管理
    - 公告查询
    - 添加公告
    - 发送短信
    - 发送邮件
6. 下载中心
    - 文档查询
    - 上传文档
7. 签到管理
    - 签到查询 
    - 签到图表
8. 报表管理
    - 生成报表

---
## 模块介绍
### 一. 登录
```
graph TD
    A[用户点击登录] -->B[后端接受到登录请求]
    B -->C[SpringMVC进行拦截认证]
    C -->D{认证通过核验账户和密码}
    C -->Q[认证为未通过]
    Q -->J[重新登陆]
    D -->|one| E[账号密码正确]
    D -->|two| F[账号错误]
    D -->|three| G[密码错误]
    E -->H[登录成功确认身份]
    F -->J[重新登陆]
    G -->J[重新登陆]
    
```
---
### 二.用户管理
![img](https://github.com/ahaodada/OA/blob/master/%E7%94%A8%E6%88%B7%E7%AE%A1%E7%90%86.png?raw=true)
可以查询到当前用户，以及公司所有用户的用户量，管理员可以进行修改，添加，删除，批量删除等功能，普通用户自由查询的权限，其中特为注意的是，修改页面和登录页面未同页面，为了区分页面，我在传入后端数据的时候，添加了一个变量，当变量为1，为添加页面，当变量为其他数，都为修改页面，要带入参数返回界面的：
###### 添加
``` java
 @RequestMapping("/addUser")
     public String  addUser(TbUser tbUser,HttpServletResponse response,Integer flag) {
    	 response.setCharacterEncoding("utf-8");
    	 response.setContentType("text/html;charset=UTF-8");
		 if(flag==1){
			 return "/user/showAddUser";		 
		 }else{
			 try {
	    	 boolean insertUser = uapateServiceLmpl.insertUser(tbUser);
	    	  System.out.println(insertUser);
	    	     if(insertUser){
						response.getWriter().print("success");
					 }else{
						 response.getWriter().print("error");
					 }  
	    	    }catch (IOException e) {
					e.printStackTrace();
				}
		 }    
		 return null;
	}
```
###### 修改
```
 @RequestMapping("/updateUser")
     public String updateUser(Model model,TbUser tbUser,HttpServletResponse response,Integer flag,HttpSession session){
    	 response.setCharacterEncoding("utf-8");
    	 response.setContentType("text/html;charset=UTF-8");
    	 System.out.println(flag);
    	 TbUser selectID = uapateServiceLmpl.selectID(tbUser.getId());
    	 if(flag==1){
    		 model.addAttribute("user", selectID);
    		  return "/user/showUpdateUser";
    	 }else{
    		 try {
    		 boolean updataUser = uapateServiceLmpl.updataUser(tbUser);
    		 if(updataUser){
						response.getWriter().print("success");
					}else{
						response.getWriter().print("error");
					} 
    		 }catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
    	 }
             
    	 
    	 return null;	 
     }
```
---
### 三.部门管理
![img](https://github.com/ahaodada/OA/blob/master/%E9%83%A8%E9%97%A8%E7%AE%A1%E7%90%86.png?raw=true)
主要功能和用户管理差不多，在页面跳转方面利用的也是变量，机制跟用户管理一样。

---
### 四.职位管理
![img](https://github.com/ahaodada/OA/blob/master/%E8%81%8C%E4%BD%8D%E7%AE%A1%E7%90%86.png?raw=true)
主要功能和用户管理差不多，在页面跳转方面利用的也是变量，机制跟用户管理一样。

---
### 五.员工管理
![img](https://github.com/ahaodada/OA/blob/master/%E5%91%98%E5%B7%A5%E7%AE%A1%E7%90%86.png?raw=true)
主要功能和用户管理差不多，在页面跳转方面利用的也是变量，机制跟用户管理一样。

---
### 六.公告管理
![img](https://github.com/ahaodada/OA/blob/master/%E5%85%AC%E5%91%8A%E7%AE%A1%E7%90%86.png?raw=true)
公告管理的前2个部分没有什么好说的，跟前面的机制都一样，主要是发送邮件和发送短信这一块，发送短信这块在测试的时候用的第三方253云通讯的接口，可以免费发送，邮件功能只是做到可以发送，没有接入第三方的接口，有需要的可以写接入接口就可以发生成功：
###### 发送短信
```
@RequestMapping("notice/addMsg")
	public String sendOut(Integer flag,String phone,String content,HttpServletResponse response){
		PostMethod post=null;
	try {
	    if(flag==1){
	    	return "/notice/showAddMsg";
	    }else {
	    	HttpClient client = new HttpClient();
	    	post = new PostMethod("http://gbk.api.smschinese.cn"); 
	    	post.addRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=gbk");//在头文件中设置转码
	    	NameValuePair[] data ={ new NameValuePair("Uid", "chss"),new NameValuePair("Key", "ef83f6cbbaa00536a484"),new NameValuePair("smsMob",phone),new NameValuePair("smsText",content)};
	    	post.setRequestBody(data);
				client.executeMethod(post);
			  } 
	    	Header[] headers = post.getResponseHeaders();
	    	int statusCode = post.getStatusCode();
	    	System.out.println("statusCode:"+statusCode);
	    	for(Header h : headers){
	    	   System.out.println(h.toString());
	    	  }
	    	String result = new String(post.getResponseBodyAsString().getBytes("gbk")); 
	    	
	    	if(result.equals("1")){
	    		response.getWriter().print("success");
	    	}else{
	    		response.getWriter().print("error");
	    	}
	    	
	    	System.out.println(result); //打印返回消息状态
	    	post.releaseConnection();

	    	}catch (HttpException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		return null;
	}
```

---
### 七.下载中心
![img](https://github.com/ahaodada/OA/blob/master/%E4%B8%8B%E8%BD%BD%E4%B8%AD%E5%BF%83.png?raw=true)
下载中心主要是员工以及管理员之间上传了一些文档，可以相互之间下载，方便交流沟通，点击下载按钮就可以下载到本地，还是方便的，功能全实现了，可以当做参考，同样的，管理员具有删除功能，普通用户只可以下载和上传：
###### 上传
```
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
```
###### 下载
```
@RequestMapping("doc/downloadDocument")
	public ResponseEntity<byte[]> downloadDocument(String filename){
		 File file = new File("H:/tmpe/",filename);
	 try {
	     if(file.exists()){
		     HttpHeaders headers = new HttpHeaders();
			 String string = new String(file.getName().getBytes("UTF-8"),"ISO-8859-1");
			 headers.setContentDispositionFormData("attachment", string);
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
```
### 八.签到管理
![img](https://github.com/ahaodada/OA/blob/master/%E7%AD%BE%E5%88%B0%E7%AE%A1%E7%90%86.png?raw=true)
员工可以再这里进行简单的上下班打卡，以及查询自己本周，本月的打卡情况，都可以用图表的形式给展示出来，非常的方便，打卡系统，不是特别的完美，主要是在时间上一些设置，当你现在发起打卡请求的时间超过了设定好的每天具体时间，可以打卡，当是会显示迟到，下班卡无需在打，第二天登录，检测日期，日期变了就重置打卡：
###### 签到
```
	//打卡
    @RequestMapping("sign/addSign")
    public String addSign(Integer uid,HttpServletResponse response){
	      try {
	        if(ssl.addSign(uid)){
		        response.getWriter().print(1);
		     }else{
		        response.getWriter().print(2);
	        }	   
	      }catch (IOException e) {
		     e.printStackTrace();
	      }
	       return null;	
        }
	
	//判断用户今天是否已经打卡
    @RequestMapping("sign/decideSign")
	public String judgeUserForCard(Integer uid,String nowDate,HttpServletResponse response){
    try {
		if(ssl.judgeUserForCard(uid,nowDate)){
			 response.getWriter().print(1);
		}else{
			 response.getWriter().print(2);
		 }
	 } catch (IOException e) {
		e.printStackTrace();
	   }
		return null;
	}
    
    //生成图表
    @RequestMapping("sign/chartsJson")
    @ResponseBody
    public List<SignChatrs> table(@RequestParam(defaultValue="1990-01-01")String beginDay){
		 
    	return ssl.table(beginDay);
    	
    }
```
---
### 九.生成报表
![img](https://github.com/ahaodada/OA/blob/master/%E6%8A%A5%E8%A1%A8%E7%AE%A1%E7%90%86.png?raw=true)
主要是导出为PDF格式，和Excel格式；
```
//导出Excel
	@Override
	public String showExcel(String username) {
		    TbUserExample example = new TbUserExample();
		    example.createCriteria().andUsernameLike("%"+username+"%");
		    List<TbUser> tbUsers = mapper.selectByExample(example);
		    
		    UserVO<TbUser> bean = new UserVO<TbUser>();
		    bean.setRows(tbUsers);
		    bean.setTotal(tbUsers.size());
		    
		    for(TbUser tb1:tbUsers){
		    	System.out.println(tb1.getUsername());
		    }
		    
		    JSONObject json = (JSONObject) JSONObject.toJSON(bean);
		    JSONArray rows = json.getJSONArray("rows");
		    
		    JSONObject jsonObject = rows.getJSONObject(0);
		    ArrayList<String> keys = new ArrayList<>();
		    for(String str:jsonObject.keySet()){
		    	if(jsonObject.get(str)!=null){
		    		keys.add(str);	
		    	} 
		     }
		     HSSFWorkbook hwb = new HSSFWorkbook();
		     HSSFSheet createSheet = hwb.createSheet();
		     HSSFRow createRow = createSheet.createRow(0);
		     for(int i=0;i<keys.size();i++){
		    	 HSSFCell createCell = createRow.createCell(i);
		    	 createCell.setCellValue(keys.get(i));
		     }

		     for(int i=1;i<=rows.size();i++){
		    	 HSSFRow create = createSheet.createRow(i);
		    	 JSONObject jsonOb = rows.getJSONObject(i-1);
		    	 for(int j=0;j<keys.size();j++){
		    		 HSSFCell createCell = create.createCell(j);
		    		 Object object = jsonOb.get(keys.get(j));
		    		 if(object instanceof Date){
		    			 createCell.setCellValue(new SimpleDateFormat("yyyy-MM-dd").format(object));
		    		 }else{
		    			 createCell.setCellValue(object.toString());
		    		 }
		    	 }
		     }
		  try {
		     File file = new File("H:/tmpe/" + File.separator + System.currentTimeMillis() + ".xls");
		      if(!file.exists()){
					file.createNewFile();
					FileOutputStream openOutputStream = FileUtils.openOutputStream(file);
					hwb.write(openOutputStream);
					
					hwb.close();
					openOutputStream.flush();
					openOutputStream.close();
				}
		        return file.getName();
		      } catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		return null;
	}
```

## 测试连接
[人事管理系统](http://192.168.116.1:8080/CHOA/) 测试账号：admin,密码：123456




   