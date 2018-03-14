package com.ch.www.util;
/*创建密钥对的工具类*/


import java.io.IOException;
import java.security.Key;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.util.HashMap;
import java.util.Map;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;


public class RSAKeyUtil {
     //非对称加密算法包含RSA算法
	private static final String KEY_AIGO="RSA";
	//private static final String KEY_AIGO="MD5WithRSA";
	
	//公钥：MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDLqXwimZozVQSN2XmQzSRVNwNREP9JSx11TG5JUX3Bc685YQjK0dUwI95vd6Y93Zr2/FuhWIlnKUaPrQgb654ljnB3NjVl9qed8yVSsRVu54tUWFOuV2oQAJwRJmP39T03I1QqSMcUDrbn9wF65sSNMKOBv4KcnXIsmQhfQkun0wIDAQAB
	//私钥：MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAMupfCKZmjNVBI3ZeZDNJFU3A1EQ/0lLHXVMbklRfcFzrzlhCMrR1TAj3m93pj3dmvb8W6FYiWcpRo+tCBvrniWOcHc2NWX2p53zJVKxFW7ni1RYU65XahAAnBEmY/f1PTcjVCpIxxQOtuf3AXrmxI0wo4G/gpydciyZCF9CS6fTAgMBAAECgYA07ON0fmRDKLnZPwXHanghqP00qO0el+Wc4PLcHNBIYI7No3jMdEEplHiukPJjq14lBymswTxb0a8jkTzFPLLI6oWsSFf/U8Dbdcm9rOrho6QT+MwDgtUaeKf1Eg4d+tQ/9wLDRTXRl3a2x+XykPDxzBSYY/5Fsnvhcii5wt/9EQJBAPtGJMdzL+o2Xeb546KrZOsl/saJLYXYAr0HHnWvqKyQSGM8PGMtMQMkgP0qAup+o0seb83mm5LSqknzXPTL44sCQQDPfhhSKiiGKfuo8bx8/fCTMfpM9mARR4laF6pQVcqpnBIKSulfccViTG1mcp2vlxZUPDxeXeJGnqsWqqXdlDXZAkBT8nhBJiuA3Q78Jso1Q3ugz/3RSG0sBSHNEz7K5Je+pyl39dza6XMxcJWjftCglRRq+U0zBfM91yHLOQH6Ss/HAkBwd5WxO565khoRqe4UBgUXk/hrLQRHeXIOvlMXtljidHEm2RIEJQPrUyfdZvTnz0pQIFJMiDD1PF3aLGc5YnOJAkAe234F7yhCOH2OH9HUN8A4RAs+jCE7O0M2Yd935Xr6fIk9tMjpNcPGF+EQfYtw6DKHCr0p/ACIxaC7qkLA8CG+

	// 获取公钥的key
		public static final String PUBLICKEY = "RSAPublicKey";
		// 获取私钥的key
		public static final String PRIVATEKEY = "RSAPirvateKey";

		// 创建密钥对
		public static Map<String, Object> initKey() {
			Map<String, Object> map = new HashMap<String, Object>(2);
			try {
				// 生成指定算法的密钥对
				// 获取密钥对生成器
				KeyPairGenerator generator = KeyPairGenerator.getInstance(KEY_AIGO);
				// 限定生成的密钥的长度为1024,最低是512.
				generator.initialize(1024);
				// 生成密钥对
				KeyPair keyPair = generator.generateKeyPair();
				// 得到公钥
				PublicKey publicKey = keyPair.getPublic();
				// 得到私钥
				PrivateKey privateKey = keyPair.getPrivate();

				// 将公钥与私钥存储到集合中
				map.put(PUBLICKEY, publicKey);
				map.put(PRIVATEKEY, privateKey);
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			}
			return map;
		}

		// 利用Base64编码进行加密的方法
		@SuppressWarnings("restriction")
		public static String encryptBase64(byte[] key) {
			BASE64Encoder encoder = new BASE64Encoder();
			return encoder.encodeBuffer(key);
		}

		// 利用Base64编码进行解密的方法
		@SuppressWarnings("restriction")
		public static byte[] decryptBase64(String key) {
			try {
				BASE64Decoder decoder = new BASE64Decoder();
				return decoder.decodeBuffer(key);
			} catch (IOException e) {
				e.printStackTrace();
			}
			return null;
		}

		public static void main(String[] key) {
			
			Map<String, Object> map = initKey();
			
			//从集合中获取公钥
			Key pubKey= (Key) map.get(PUBLICKEY);
			Key priKey= (Key) map.get(PRIVATEKEY);
			
			//进过base64重新编码后得到的公钥
			String pub = encryptBase64(pubKey.getEncoded());
			//进过base64重新编码后得到的私钥
			String pri = encryptBase64(priKey.getEncoded());
			System.out.println("公钥="+pub);
			System.out.println("私钥="+pri);
		}
}
