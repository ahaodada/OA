package com.ch.www.util;

import java.util.Properties;

import com.alibaba.druid.filter.config.ConfigTools;
import com.alibaba.druid.util.DruidPasswordCallback;
//解密的工具类
public class DBPasswordCallback extends DruidPasswordCallback {

	private static final long serialVersionUID = 1L;
	
	//公钥：MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDLqXwimZozVQSN2XmQzSRVNwNREP9JSx11TG5JUX3Bc685YQjK0dUwI95vd6Y93Zr2/FuhWIlnKUaPrQgb654ljnB3NjVl9qed8yVSsRVu54tUWFOuV2oQAJwRJmP39T03I1QqSMcUDrbn9wF65sSNMKOBv4KcnXIsmQhfQkun0wIDAQAB
  private static final String PUBLICKEY="MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDLqXwimZozVQSN2XmQzSRVNwNREP9JSx11TG5JUX3Bc685YQjK0dUwI95vd6Y93Zr2/FuhWIlnKUaPrQgb654ljnB3NjVl9qed8yVSsRVu54tUWFOuV2oQAJwRJmP39T03I1QqSMcUDrbn9wF65sSNMKOBv4KcnXIsmQhfQkun0wIDAQAB";

@Override
public void setProperties(Properties properties) {
	
	super.setProperties(properties);
	String property = properties.getProperty("password");
	if(property!=null){
		try {
			System.out.println("property="+property);
			String decrypt = ConfigTools.decrypt(PUBLICKEY, property);
			setPassword(decrypt.toCharArray());
			System.out.println("密码是"+decrypt+"?");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
   
  
}
