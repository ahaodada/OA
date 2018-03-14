package com.ch.www.util;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.config.Configuration;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.internal.DefaultShellCallback;

public class MyTest {
    public static void main(String[] args) {
    try {
    	List<String> warnings = new ArrayList<String>();
		boolean overwrite = true;
		// 在这个路径下,必须这样写才行!
		File configFile = new File("src/main/resources/generatorConfig.xml");
		// 或者config/generatorConfig.xml
		// File configFile = new File("src/main/resources/generatorConfig.xml");
		ConfigurationParser cp = new ConfigurationParser(warnings);
		//创建一个配置对象
		Configuration config = cp.parseConfiguration(configFile);
		//设置回调
		DefaultShellCallback callback = new DefaultShellCallback(overwrite);
		//Mybatis的逆向工程生成器
		MyBatisGenerator myBatisGenerator = new MyBatisGenerator(config, callback, warnings);
		//逆向生成配置文件.
			myBatisGenerator.generate(null);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
