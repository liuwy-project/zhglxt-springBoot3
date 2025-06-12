package com.zhglxt.web.controller.cms;

import com.zhglxt.cms.entity.Advertising;
import com.zhglxt.cms.service.IAdvertisingService;
import com.zhglxt.cms.service.ISiteService;
import com.zhglxt.common.annotation.Log;
import com.zhglxt.common.config.GlobalConfig;
import com.zhglxt.common.config.ServerConfig;
import com.zhglxt.common.core.controller.BaseController;
import com.zhglxt.common.core.domain.AjaxResult;
import com.zhglxt.common.core.page.TableDataInfo;
import com.zhglxt.common.core.text.Convert;
import com.zhglxt.common.enums.BusinessType;
import com.zhglxt.common.utils.ShiroUtils;
import com.zhglxt.common.utils.StringUtils;
import com.zhglxt.common.utils.WebUtil;
import com.zhglxt.common.utils.file.FileUploadUtils;
import com.zhglxt.common.utils.file.FileUtils;
import com.zhglxt.common.utils.file.MimeTypeUtils;
import com.zhglxt.common.utils.uuid.UUID;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.Parameters;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

/**
 * 广告管理Controller
 * @author liuwy
 * @date 2019/12/15
 */
@Tag(name = "企业官网-广告管理")
@Controller
@RequestMapping("/cms/advertising")
public class AdvertisingController extends BaseController {
    private String prefix = "cms/advertising";

    @Autowired
    private IAdvertisingService advertisingService;

    @Autowired
    private ISiteService siteService;

    @Autowired
    private ServerConfig serverConfig;

    @Value("${server.servlet.context-path}")
    private String contextPath;

    @RequestMapping()
    public String advertisingIndex() {
        return prefix + "/advertisingIndex";
    }

    @Operation(summary = "广告列表")
    @Parameters({
            @Parameter(
                    name = "id",
                    description = "广告id",
                    schema = @Schema(type = "string"),
                    in = ParameterIn.QUERY
            ),
            @Parameter(
                    name = "title",
                    description = "广告标题",
                    schema = @Schema(type = "string"),
                    in = ParameterIn.QUERY
            )
    })
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo selectAdvertisingList(HttpServletRequest request) {
        Map<String, Object> paramMap = WebUtil.paramsToMap(request.getParameterMap());
        paramMap.put("siteId", siteService.selectOneSite().getId());
        startPage();
        List<Advertising> advertisingList = advertisingService.selectAdvertisingList(paramMap);
        return getDataTable(advertisingList);
    }

    @RequestMapping("/add")
    public String add(HttpServletRequest request, Model model) {
        Map<String, Object> paramMap = WebUtil.paramsToMap(request.getParameterMap());
        List<Advertising> advertisings = advertisingService.selectAdvertisingList(paramMap);
        model.addAttribute("advertising", advertisings.get(0));
        return prefix + "/addAdvertising";
    }

    @RequestMapping("/edit")
    public String edit(HttpServletRequest request, Model model) {
        Map<String, Object> paramMap = WebUtil.paramsToMap(request.getParameterMap());
        List<Advertising> advertisings = advertisingService.selectAdvertisingList(paramMap);
        model.addAttribute("advertising", advertisings.get(0));
        return prefix + "/editAdvertising";
    }

    /**
     * 广告管理-新增
     */
    @Log(title = "CMS-广告管理-新增", businessType = BusinessType.INSERT)
    @RequestMapping("/addAdvertising")
    @ResponseBody
    public AjaxResult addAdvertising(HttpServletRequest request) {
        Map<String, Object> paramMap = WebUtil.paramsToMap(request.getParameterMap());

            paramMap.put("id", UUID.fastUUID().toString(true));
            paramMap.put("siteId", siteService.selectOneSite().getId());
            paramMap.put("createBy", ShiroUtils.getLoginName());
            paramMap.put("updateBy", ShiroUtils.getLoginName());
            return toAjax(advertisingService.insertAdvertising(paramMap));

    }

    /**
     * 广告管理-编辑
     */
    @Log(title = "CMS-广告管理-编辑", businessType = BusinessType.INSERT)
    @RequestMapping("/editAdvertising")
    @ResponseBody
    public AjaxResult editAdvertising(HttpServletRequest request) {
        Map<String, Object> paramMap = WebUtil.paramsToMap(request.getParameterMap());

        paramMap.put("siteId", siteService.selectOneSite().getId());
        paramMap.put("updateBy", ShiroUtils.getLoginName());
        return toAjax(advertisingService.updateAdvertising(paramMap));

    }

    /**
     * 删除广告
     * QUERY
     * 	URL 查询参数（?key=value）
     * 	示例：GET /users?name=John
     * 	适合：过滤条件、可选参数
     * PATH
     * 	URL 路径中的变量（/{id}）
     * 	示例：GET /users/123
     * 	适合：资源标识符（必填）
     * HEADER
     * 	HTTP 请求头
     * 	示例：Authorization: Bearer xxx
     * 	适合：认证令牌、元数据
     * COOKIE
     * 	浏览器 Cookie
     * 	示例：Cookie: sessionId=abc123
     * 	适合：会话管理
     */
    @Operation(summary =  "删除广告")
    @Parameters({
            @Parameter(
              name= "ids",
              description = "广告id列表（如：1,2,3,4）",
              schema = @Schema(type = "String"),
              in =ParameterIn.COOKIE
            )
    })
    @Log(title = "CMS-广告管理-删除", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult deleteAdvertising(String ids) {
        return toAjax(advertisingService.deleteAdvertising(Convert.toStrArray(ids)));
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
            String filePath = GlobalConfig.getUploadPath("cms/advertising");
            // 上传并返回新文件名称
            String fileName = FileUploadUtils.upload(filePath, file, MimeTypeUtils.IMAGE_EXTENSION);
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
