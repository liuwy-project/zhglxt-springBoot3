package com.zhglxt.common.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * 全局配置类
 * 
 * @author ruoyi
 */
@Component
@ConfigurationProperties(prefix = "zhglxt")
public class GlobalConfig
{
    /** 项目名称 */
    private static String name;

    /** 版本 */
    private static String version;

    /** 版权年份 */
    private static String copyrightYear;

    /** 实例演示开关 */
    private static boolean demoEnabled;

    /** 上传路径 */
    private static String profile;

    /** 获取地址开关 */
    private static boolean addressEnabled;

    /**
     * 上传文件基础虚拟路径 userfiles
     */
    public static final String USERFILES_BASE_URL = "/userfiles/";

    /**
     * 上传文件基础虚拟路径 cms
     */
    public static final String USERFILES_BASE_URL_CMS_SITE = "/cms/site/";
    public static final String USERFILES_BASE_URL_CMS_ADVERTISING = "/cms/advertising/";
    public static final String USERFILES_BASE_URL_CMS_ARTICLE = "/cms/article/";

    public static String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        GlobalConfig.name = name;
    }

    public static String getVersion()
    {
        return version;
    }

    public void setVersion(String version)
    {
        GlobalConfig.version = version;
    }

    public static String getCopyrightYear()
    {
        return copyrightYear;
    }

    public void setCopyrightYear(String copyrightYear)
    {
        GlobalConfig.copyrightYear = copyrightYear;
    }

    public static boolean isDemoEnabled()
    {
        return demoEnabled;
    }

    public void setDemoEnabled(boolean demoEnabled)
    {
        GlobalConfig.demoEnabled = demoEnabled;
    }

    public static String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        GlobalConfig.profile = profile;
    }

    public static boolean isAddressEnabled()
    {
        return addressEnabled;
    }

    public void setAddressEnabled(boolean addressEnabled)
    {
        GlobalConfig.addressEnabled = addressEnabled;
    }

    /**
     * 获取导入上传路径
     */
    public static String getImportPath()
    {
        return getProfile() + "/import";
    }

    /**
     * 获取头像上传路径
     */
    public static String getAvatarPath()
    {
        return getProfile() + "/avatar";
    }

    /**
     * 获取下载路径
     */
    public static String getDownloadPath()
    {
        return getProfile() + "/download/";
    }


    /**
     * 获取上传路径
     */
    public static String getUploadPath()
    {
        return getProfile()+ "/upload";
    }

    /**
     * 获取上传路径
     * @param  append 附加的文件夹名称
     */
    public static String getUploadPath(String append)
    {
        return getProfile() +"/" +append;
    }

}
