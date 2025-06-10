package com.zhglxt;

import com.zhglxt.common.utils.security.Md5Utils;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.core.env.Environment;

/**
 * 启动程序
 * 
 * @author ruoyi
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
public class ZhglxtApplication extends SpringBootServletInitializer
{
    public static void main(String[] args)
    {
        ConfigurableApplicationContext run = SpringApplication.run(ZhglxtApplication.class, args);
        // System.setProperty("spring.devtools.restart.enabled", "false");
        System.out.println("系统启动成功");
        Environment env = run.getEnvironment();
        System.out.println("系统访问地址:http://localhost:" + env.getProperty("server.port") + env.getProperty("server.servlet.context-path"));
    }

    /**
     * web容器中进行部署
     */
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application)
    {
        return application.sources(ZhglxtApplication.class);
    }
}