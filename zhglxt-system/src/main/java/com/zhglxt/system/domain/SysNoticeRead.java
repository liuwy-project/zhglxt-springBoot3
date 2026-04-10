package com.zhglxt.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;

/**
 * 公告已读记录表 sys_notice_read
 *
 * @author ruoyi
 */
public class SysNoticeRead
{
    /** 主键 */
    private String readId;

    /** 公告ID */
    private String noticeId;

    /** 用户ID */
    private String userId;

    /** 阅读时间 */
    private Date readTime;

    public String getReadId()
    {
        return readId;
    }

    public void setReadId(String readId)
    {
        this.readId = readId;
    }

    public String getNoticeId()
    {
        return noticeId;
    }

    public void setNoticeId(String noticeId)
    {
        this.noticeId = noticeId;
    }

    public String getUserId()
    {
        return userId;
    }

    public void setUserId(String userId)
    {
        this.userId = userId;
    }

    public Date getReadTime()
    {
        return readTime;
    }

    public void setReadTime(Date readTime)
    {
        this.readTime = readTime;
    }

    @Override
    public String toString()
    {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("readId", getReadId())
            .append("noticeId", getNoticeId())
            .append("userId", getUserId())
            .append("readTime", getReadTime())
            .toString();
    }
}
