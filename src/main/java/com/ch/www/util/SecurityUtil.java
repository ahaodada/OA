package com.ch.www.util;

import com.alibaba.druid.filter.config.ConfigTools;
//利用私钥对明文加密的工具类

public class SecurityUtil {

	//公钥：MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDLqXwimZozVQSN2XmQzSRVNwNREP9JSx11TG5JUX3Bc685YQjK0dUwI95vd6Y93Zr2/FuhWIlnKUaPrQgb654ljnB3NjVl9qed8yVSsRVu54tUWFOuV2oQAJwRJmP39T03I1QqSMcUDrbn9wF65sSNMKOBv4KcnXIsmQhfQkun0wIDAQAB
	//私钥：MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAMupfCKZmjNVBI3ZeZDNJFU3A1EQ/0lLHXVMbklRfcFzrzlhCMrR1TAj3m93pj3dmvb8W6FYiWcpRo+tCBvrniWOcHc2NWX2p53zJVKxFW7ni1RYU65XahAAnBEmY/f1PTcjVCpIxxQOtuf3AXrmxI0wo4G/gpydciyZCF9CS6fTAgMBAAECgYA07ON0fmRDKLnZPwXHanghqP00qO0el+Wc4PLcHNBIYI7No3jMdEEplHiukPJjq14lBymswTxb0a8jkTzFPLLI6oWsSFf/U8Dbdcm9rOrho6QT+MwDgtUaeKf1Eg4d+tQ/9wLDRTXRl3a2x+XykPDxzBSYY/5Fsnvhcii5wt/9EQJBAPtGJMdzL+o2Xeb546KrZOsl/saJLYXYAr0HHnWvqKyQSGM8PGMtMQMkgP0qAup+o0seb83mm5LSqknzXPTL44sCQQDPfhhSKiiGKfuo8bx8/fCTMfpM9mARR4laF6pQVcqpnBIKSulfccViTG1mcp2vlxZUPDxeXeJGnqsWqqXdlDXZAkBT8nhBJiuA3Q78Jso1Q3ugz/3RSG0sBSHNEz7K5Je+pyl39dza6XMxcJWjftCglRRq+U0zBfM91yHLOQH6Ss/HAkBwd5WxO565khoRqe4UBgUXk/hrLQRHeXIOvlMXtljidHEm2RIEJQPrUyfdZvTnz0pQIFJMiDD1PF3aLGc5YnOJAkAe234F7yhCOH2OH9HUN8A4RAs+jCE7O0M2Yd935Xr6fIk9tMjpNcPGF+EQfYtw6DKHCr0p/ACIxaC7qkLA8CG+
   
   private static final String PRIVATEKEY="MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAMupfCKZmjNVBI3ZeZDNJFU3A1EQ/0lLHXVMbklRfcFzrzlhCMrR1TAj3m93pj3dmvb8W6FYiWcpRo+tCBvrniWOcHc2NWX2p53zJVKxFW7ni1RYU65XahAAnBEmY/f1PTcjVCpIxxQOtuf3AXrmxI0wo4G/gpydciyZCF9CS6fTAgMBAAECgYA07ON0fmRDKLnZPwXHanghqP00qO0el+Wc4PLcHNBIYI7No3jMdEEplHiukPJjq14lBymswTxb0a8jkTzFPLLI6oWsSFf/U8Dbdcm9rOrho6QT+MwDgtUaeKf1Eg4d+tQ/9wLDRTXRl3a2x+XykPDxzBSYY/5Fsnvhcii5wt/9EQJBAPtGJMdzL+o2Xeb546KrZOsl/saJLYXYAr0HHnWvqKyQSGM8PGMtMQMkgP0qAup+o0seb83mm5LSqknzXPTL44sCQQDPfhhSKiiGKfuo8bx8/fCTMfpM9mARR4laF6pQVcqpnBIKSulfccViTG1mcp2vlxZUPDxeXeJGnqsWqqXdlDXZAkBT8nhBJiuA3Q78Jso1Q3ugz/3RSG0sBSHNEz7K5Je+pyl39dza6XMxcJWjftCglRRq+U0zBfM91yHLOQH6Ss/HAkBwd5WxO565khoRqe4UBgUXk/hrLQRHeXIOvlMXtljidHEm2RIEJQPrUyfdZvTnz0pQIFJMiDD1PF3aLGc5YnOJAkAe234F7yhCOH2OH9HUN8A4RAs+jCE7O0M2Yd935Xr6fIk9tMjpNcPGF+EQfYtw6DKHCr0p/ACIxaC7qkLA8CG+";
                              
   public static String encryptDes(String msg){
	   //注意，在druidl里面实现加减密是利用的IBM提供的的算法中，
	   //是利用私钥加密，公钥解密，跟正常的相反
	   try {
		   return ConfigTools.encrypt(PRIVATEKEY,msg);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 return null;
   }
   public static void main(String[] args) {
	   System.out.println("1111");
	   String encryptDes = encryptDes("");
	   System.out.println("密文="+encryptDes);
    } 
}
