package com.zhglxt.framework.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import com.zhglxt.common.config.GlobalConfig;
import com.zhglxt.common.constant.Constants;
import com.zhglxt.framework.interceptor.RepeatSubmitInterceptor;

/**
 * 通用配置
 * 
 * @author ruoyi
 */
@Configuration
public class ResourcesConfig implements WebMvcConfigurer
{
    /**
     * 首页地址
     */
    @Value("${shiro.user.indexUrl}")
    private String indexUrl;

    @Autowired
    private RepeatSubmitInterceptor repeatSubmitInterceptor;

    /**
     * 默认首页的设置，当输入域名是可以自动跳转到默认指定的网页
     */
    @Override
    public void addViewControllers(ViewControllerRegistry registry)
    {
        registry.addViewController("/").setViewName("forward:" + indexUrl);
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry)
    {
        /** 本地文件上传路径 */
        registry.addResourceHandler(Constants.RESOURCE_PREFIX + "/**").addResourceLocations("file:" + GlobalConfig.getProfile() + "/");

        /** swagger配置 */
        registry.addResourceHandler("/swagger-ui/**").addResourceLocations("classpath:/META-INF/resources/webjars/springfox-swagger-ui/");

        /** 文件访问路径配置 (D:/zhglxt_userfiles/userfiles/) */
        registry.addResourceHandler("/userfiles/**").addResourceLocations("file:" + GlobalConfig.getProfile() + GlobalConfig.USERFILES_BASE_URL);


        /** CMS文件访问路径配置 (D:/zhglxt_userfiles/cms/XXX/...)*/
        registry.addResourceHandler("/cms/site/**").addResourceLocations("file:" + GlobalConfig.getProfile() + GlobalConfig.USERFILES_BASE_URL_CMS_SITE);
        registry.addResourceHandler("/cms/advertising/**").addResourceLocations("file:" + GlobalConfig.getProfile() + GlobalConfig.USERFILES_BASE_URL_CMS_ADVERTISING);
        registry.addResourceHandler("/cms/article/**").addResourceLocations("file:" + GlobalConfig.getProfile() + GlobalConfig.USERFILES_BASE_URL_CMS_ARTICLE);
    }

    /**
     * 自定义拦截规则
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry)
    {
        registry.addInterceptor(repeatSubmitInterceptor).addPathPatterns("/**");
    }
}