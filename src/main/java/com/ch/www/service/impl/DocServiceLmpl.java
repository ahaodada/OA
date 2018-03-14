package com.ch.www.service.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.www.domain.TbDoc;
import com.ch.www.domain.TbDocExample;
import com.ch.www.domain.TbUser;
import com.ch.www.mapper.TbDocMapper;
import com.ch.www.mapper.TbUserMapper;
import com.ch.www.service.DocService;
import com.ch.www.vo.UserVO;


@Service("docservice") 
public class DocServiceLmpl implements DocService {
       @Autowired
	   private TbDocMapper mapper;
       
       @Autowired
       private TbUserMapper umapper;
	 
       //查询
       @Override
       public UserVO<TbDoc> lookUp(String title) {
    	    UserVO<TbDoc> userVO = new UserVO<TbDoc>();
    	    TbDocExample example = new TbDocExample();
    	    List<TbDoc> tb1 = null;
    	   if(title.equals("")){
    		   tb1 = mapper.selectByExampleWithBLOBs(example); 
    	   }else {
			   example.createCriteria().andTitleLike("%"+title+"%");
			   tb1 = mapper.selectByExampleWithBLOBs(example);	
	     	}
    	   for(TbDoc d:tb1){
    		   TbUser tbUser = umapper.selectByPrimaryKey(d.getUid());
    		    d.setUser(tbUser);
    	   }
    	   userVO.setRows(tb1);
    	   userVO.setTotal(tb1.size());
    	   return userVO;
       }
       
     //上传添加
	@Override
	public boolean add(String title, String content, Integer uid, String filename) {
		TbDoc tbDoc = new TbDoc();
	 try {
		 SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 String format = simpleDateFormat.format(new Date());
		 
		 Date parse = simpleDateFormat.parse(format);
		 tbDoc.setCreatedate(parse);
		 tbDoc.setFilename(filename);
		 tbDoc.setUid(uid);
		 tbDoc.setRemark(content);
		 tbDoc.setTitle(title);
		 tbDoc.setUser(umapper.selectByPrimaryKey(uid));
		 
		 
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 return  mapper.insertSelective(tbDoc)>0;
	}
    //删除
	@Override
	public void deleteID(Integer id) {
		
		 int deleteByPrimaryKey = mapper.deleteByPrimaryKey(id);
	}
    
	//批量删除
	@Override
	public void deleteAll(Integer[] ids) {
		 TbDocExample example = new TbDocExample();
	     example.createCriteria().andIdIn(Arrays.asList(ids));
		 int deleteByExample = mapper.deleteByExample(example);
	}


}
