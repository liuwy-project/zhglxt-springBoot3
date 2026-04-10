package com.zhglxt.system.service;

import com.zhglxt.system.domain.SysNotice;

import java.util.List;

/**
 * 公告已读记录 服务层
 *
 * @author ruoyi
 */
public interface ISysNoticeReadService
{
    /**
     * 标记已读（幂等，重复调用不报错）
     *
     * @param noticeId 公告ID
     * @param userId   用户ID
     */
    public void markRead(String noticeId, String userId);

    /**
     * 查询某用户未读公告数量
     *
     * @param userId 用户ID
     * @return 未读数量
     */
    public int selectUnreadCount(String userId);

    /**
     * 查询公告列表并标记当前用户已读状态（用于首页展示）
     *
     * @param userId 用户ID
     * @param limit  最多返回条数
     * @return 带 isRead 标记的公告列表
     */
    public List<SysNotice> selectNoticeListWithReadStatus(String userId, int limit);

    /**
     * 批量标记已读
     *
     * @param userId    用户ID
     * @param noticeIds 公告ID数组
     */
    public void markReadBatch(String userId, String[] noticeIds);

    /**
     * 删除公告时清理对应已读记录
     *
     * @param ids 公告ID字符串（逗号分隔）
     */
    public void deleteByNoticeIds(String ids);
}
