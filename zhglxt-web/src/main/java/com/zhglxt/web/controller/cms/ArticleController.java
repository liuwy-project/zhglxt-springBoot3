package com.zhglxt.web.controller.cms;


import com.zhglxt.cms.entity.Article;
import com.zhglxt.cms.entity.Column;
import com.zhglxt.cms.service.IColumnService;
import com.zhglxt.cms.service.ISiteService;
import com.zhglxt.cms.service.impl.ArticleServiceImpl;
import com.zhglxt.common.annotation.Log;
import com.zhglxt.common.config.GlobalConfig;
import com.zhglxt.common.config.ServerConfig;
import com.zhglxt.common.core.controller.BaseController;
import com.zhglxt.common.core.domain.AjaxResult;
import com.zhglxt.common.core.page.TableDataInfo;
import com.zhglxt.common.core.text.Convert;
import com.zhglxt.common.enums.BusinessType;
import com.zhglxt.common.utils.StringUtils;
import com.zhglxt.common.utils.WebUtil;
import com.zhglxt.common.utils.file.FileUploadUtils;
import com.zhglxt.common.utils.file.FileUtils;
import com.zhglxt.common.utils.file.MimeTypeUtils;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

/**
 * 文章Controller
 * @author liuwy
 * @date 2019/12/3
 */
@Controller
@RequestMapping("/cms/article")
public class ArticleController extends BaseController {
    private String prefix = "cms/article";

    @Autowired
    private ArticleServiceImpl articleService;

    @Autowired
    private IColumnService columnService;

    @Autowired
    private ISiteService siteService;

    @Autowired
    private ServerConfig serverConfig;

    @Value("${server.servlet.context-path}")
    private String contextPath;


    @GetMapping
    public String articleList() {
        return prefix + "/articleIndex";
    }

    @RequestMapping("/list")
    @ResponseBody
    public TableDataInfo selectArticleList(HttpServletRequest request) {
        Map<String, Object> paramMap = WebUtil.paramsToMap(request.getParameterMap());
        paramMap.put("siteId", siteService.selectOneSite().getId());
        startPage();
        List<Article> list = articleService.selectArticleList(paramMap);
        return getDataTable(list);
    }

    @GetMapping("/selectColumnTree")
    public String selectColumnTree(HttpServletRequest request, Model model) {
        Map<String, Object> paramMap = WebUtil.paramsToMap(request.getParameterMap());
        paramMap.put("siteId", siteService.selectOneSite().getId());
        List<Column> columns = columnService.selectColumnList(paramMap);
        model.addAttribute("column", columns.get(0));
        return prefix + "/columnTree";
    }

    @RequestMapping("/columnTreeData")
    @ResponseBody
    public List<Column> columnTreeData(HttpServletRequest request) {
        Map<String, Object> paramMap = WebUtil.paramsToMap(request.getParameterMap());
        paramMap.put("siteId", siteService.selectOneSite().getId());
        List<Column> columns = columnService.selectColumnList(paramMap);
        return columns;
    }

    @GetMapping("/add")
    public String add(HttpServletRequest request, Model model) {
        Map<String, Object> paramMap = WebUtil.paramsToMap(request.getParameterMap());
        paramMap.put("siteId", siteService.selectOneSite().getId());
        paramMap.put("columnId", paramMap.get("id"));
        List<Column> columns = columnService.selectColumnList(paramMap);
        model.addAttribute("column", columns.get(0));
        return prefix + "/addArticle";
    }

    /**
     * 新增文章
     */
    @Log(title = "CMS-文章管理-新增", businessType = BusinessType.INSERT)
    @RequestMapping("/addArticle")
    @ResponseBody
    public AjaxResult addArticle(HttpServletRequest request) {
        Map<String, Object> paramMap = WebUtil.paramsToMap(request.getParameterMap());
        return toAjax(articleService.addArticle(paramMap));
    }

    @RequestMapping("/edit")
    public String edit(HttpServletRequest request, Model model) {
        Map<String, Object> paramMap = WebUtil.paramsToMap(request.getParameterMap());
        List<Article> list = articleService.selectArticleList(paramMap);
        if (!CollectionUtils.isEmpty(list)) {
            model.addAttribute("article", list.get(0));
        }
        return prefix + "/editArticle";
    }

    /**
     * 修改文章
     */
    @Log(title = "CMS-文章管理-编辑", businessType = BusinessType.UPDATE)
    @PostMapping("/editArticle")
    @ResponseBody
    public AjaxResult editArticle(HttpServletRequest request) {
        Map<String, Object> paramMap = WebUtil.paramsToMap(request.getParameterMap());
        return toAjax(articleService.updateArticle(paramMap));
    }

    /**
     * 删除文章
     */
    @Log(title = "CMS-文章管理-删除", businessType = BusinessType.DELETE)
    @RequestMapping("/remove")
    @ResponseBody
    public AjaxResult deleteArticle(String ids) {
        return toAjax(articleService.deleteArticle(Convert.toStrArray(ids)));
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
            String filePath = GlobalConfig.getUploadPath("cms/article");
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
