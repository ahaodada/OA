package com.ch.www.service.impl;

import java.io.File;

import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFCellUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.ch.www.domain.TbUser;
import com.ch.www.domain.TbUserExample;
import com.ch.www.mapper.TbUserMapper;
import com.ch.www.service.PoiService;
import com.ch.www.vo.UserVO;
@Service("poiservice")
public class PoiServiceImpl implements PoiService {
     
	 @Autowired
	 private TbUserMapper mapper;
	//导出Excel
	@Override
	public String showExcel(String username) {
		  //根据传入的值查找
		    TbUserExample example = new TbUserExample();
		    example.createCriteria().andUsernameLike("%"+username+"%");
		    List<TbUser> tbUsers = mapper.selectByExample(example);
		    
		    UserVO<TbUser> bean = new UserVO<TbUser>();
		    bean.setRows(tbUsers);
		    bean.setTotal(tbUsers.size());
		    
		    for(TbUser tb1:tbUsers){
		    	System.out.println(tb1.getUsername());
		    }
		    
		    //将bean转换为json格式
		    JSONObject json = (JSONObject) JSONObject.toJSON(bean);
		    JSONArray rows = json.getJSONArray("rows");
		    
		   //遍历所有json的key
		    JSONObject jsonObject = rows.getJSONObject(0);
		    ArrayList<String> keys = new ArrayList<>();
		    for(String str:jsonObject.keySet()){
		    	if(jsonObject.get(str)!=null){
		    		keys.add(str);	
		    	} 
		     }
		    //建立包
		     HSSFWorkbook hwb = new HSSFWorkbook();
		     //创建一个表格
		     HSSFSheet createSheet = hwb.createSheet();
		     //创建行
		     HSSFRow createRow = createSheet.createRow(0);
		     //创建单元格
		     for(int i=0;i<keys.size();i++){
		    	 HSSFCell createCell = createRow.createCell(i);
		    	 createCell.setCellValue(keys.get(i));
		     }

		     //创建其他行
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
   
	//导出PDF
	@Override
	public String showPDF(String username) {
		// TODO Auto-generated method stub
		return null;
	}

}
