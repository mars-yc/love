package com.master.love.domain;

import com.alibaba.fastjson.annotation.JSONField;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "love_blog_tbl")
public class Blog {

    @Id
    @Basic(optional = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;
    @Column(name = "subject")
    private String subject;
    @Type(type="text")
    @Column(name = "content")
    private String content;
    @Column(name = "publish_time")
    @JSONField(format = "yyyy-MM-dd hh:mm:ss")
    private Date publishTime;
    @JSONField(format = "yyyy-MM-dd hh:mm:ss")
    @Column(name = "latest_update_time")
    private Date latestUpdateTime;
    @Column(name = "category")
    @Transient
    private BlogCategory blogCategory;
    @Column(name = "viewed_times")
    private Integer viewedTimes;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getPublishTime() {
        return publishTime;
    }

    public void setPublishTime(Date publishTime) {
        this.publishTime = publishTime;
    }

    public Date getLatestUpdateTime() {
        return latestUpdateTime;
    }

    public void setLatestUpdateTime(Date latestUpdateTime) {
        this.latestUpdateTime = latestUpdateTime;
    }

    public BlogCategory getBlogCategory() {
        return blogCategory;
    }

    public void setBlogCategory(BlogCategory blogCategory) {
        this.blogCategory = blogCategory;
    }

    public Integer getViewedTimes() {
        return viewedTimes;
    }

    public void setViewedTimes(Integer viewedTimes) {
        this.viewedTimes = viewedTimes;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "id=" + id +
                ", subject='" + subject + '\'' +
                ", content='" + content + '\'' +
                ", publishTime=" + publishTime +
                ", latestUpdateTime=" + latestUpdateTime +
                ", blogCategory=" + blogCategory +
                ", viewedTimes=" + viewedTimes +
                '}';
    }
}