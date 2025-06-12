package com.zhglxt.web.controller.cms;

import com.zhglxt.cms.entity.Site;
import com.zhglxt.cms.service.ISiteService;
import com.zhglxt.common.annotation.Log;
import com.zhglxt.common.config.GlobalConfig;
import com.zhglxt.common.config.ServerConfig;
import com.zhglxt.common.constant.Constants;
import com.zhglxt.common.core.controller.BaseController;
import com.zhglxt.common.core.domain.AjaxResult;
import com.zhglxt.common.core.page.TableDataInfo;
import com.zhglxt.common.core.text.Convert;
import com.zhglxt.common.enums.BusinessType;
import com.zhglxt.common.exception.file.FileNameLengthLimitExceededException;
import com.zhglxt.common.exception.file.FileSizeLimitExceededException;
import com.zhglxt.common.exception.file.InvalidExtensionException;
import com.zhglxt.common.utils.DateUtils;
import com.zhglxt.common.utils.StringUtils;
import com.zhglxt.common.utils.WebUtil;
import com.zhglxt.common.utils.file.FileUploadUtils;
import com.zhglxt.common.utils.file.FileUtils;
import com.zhglxt.common.utils.file.MimeTypeUtils;
import com.zhglxt.common.utils.uuid.IdUtils;
import com.zhglxt.common.utils.uuid.Seq;
import jakarta.servlet.http.HttpServletRequest;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/**
 * 站点Controller
 * @author liuwy
 * @date 2019/12/3
 */
@Controller
@RequestMapping("/cms/site")
public class SiteController extends BaseController {
    private String prefix = "cms/site";

    @Autowired
    private ISiteService siteService;

    @Autowired
    private ServerConfig serverConfig;

    @Value("${server.servlet.context-path}")
    private String contextPath;

    @GetMapping("index")
    public String columnList() {
        return prefix + "/siteIndex";
    }

    @RequestMapping("/list")
    @ResponseBody
    public TableDataInfo selectSiteList(HttpServletRequest request) {
        Map<String, Object> paramMap = WebUtil.paramsToMap(request.getParameterMap());
        startPage();
        List<Site> siteList = siteService.selectSiteList(paramMap);
        return getDataTable(siteList);
    }

    @GetMapping("/add")
    public String addSite() {
        return prefix + "/addSite";
    }

    /**
     * 新增站点
     */
    @Log(title = "CMS-站点管理-新增", businessType = BusinessType.INSERT)
    @RequestMapping("/addSite")
    @ResponseBody
    public AjaxResult addSite(HttpServletRequest request) {
        Map<String, Object> paramMap = WebUtil.paramsToMap(request.getParameterMap());
        return toAjax(siteService.insertSite(paramMap));
    }

    @RequestMapping("/edit")
    public String editSite(HttpServletRequest request, Model model) {
        Map<String, Object> paramMap = WebUtil.paramsToMap(request.getParameterMap());
        List<Site> list = siteService.selectSiteList(paramMap);
        if (!CollectionUtils.isEmpty(list)) {
            model.addAttribute("site", list.get(0));
        }
        return prefix + "/editSite";
    }

    /**
     * 修改站点
     */
    @Log(title = "CMS-站点管理--修改", businessType = BusinessType.UPDATE)
    @PostMapping("/editSite")
    @ResponseBody
    public AjaxResult editSite(HttpServletRequest request) {
        Map<String, Object> paramMap = WebUtil.paramsToMap(request.getParameterMap());
        return toAjax(siteService.updateSite(paramMap));
    }

    /**
     * 删除站点
     */
    @Log(title = "CMS-站点管理--删除", businessType = BusinessType.DELETE)
    @RequestMapping("/remove")
    @ResponseBody
    public AjaxResult deleteSite(String ids) {
        return toAjax(siteService.deleteSite(Convert.toStrArray(ids)));
    }

    /**
     * 上传文件请求（单个）-cms
     */
    @PostMapping("/uploadCMS")
    @ResponseBody
    public AjaxResult uploadCMS(MultipartFile file) throws Exception
    {
        try
        {
            // 上传文件路径
            String filePath = GlobalConfig.getUploadPath("cms/site");
            // 上传并返回新文件名称
            String fileName = FileUploadUtils.upload(filePath, file, MimeTypeUtils.MEDIA_EXTENSION);
            String url = serverConfig.getUrl() + "/"+fileName;
            if(StringUtils.isNotEmpty(url)){
                if(url.contains(contextPath)){
                    url=url.substring(url.indexOf(contextPath));
                }
            }

            AjaxResult ajax = AjaxResult.success();
            ajax.put("url", url);
            ajax.put("fileName", fileName);
            ajax.put("newFileName", FileUtils.getName(fileName));
            ajax.put("originalFilename", file.getOriginalFilename());
            return ajax;
        }
        catch (Exception e)
        {
            return AjaxResult.error(e.getMessage());
        }
    }

}
