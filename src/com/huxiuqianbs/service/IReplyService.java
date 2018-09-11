package com.huxiuqianbs.service;

import java.util.List;

import com.huxiuqianbs.pojo.Reply;
import com.huxiuqianbs.pojo.Rpy;


public interface IReplyService {
    List<Reply> getReply(int mid);
    List<Rpy> getRpy(int mid);
    int addReply(Reply reply);
    int repliesNum(int mid);
}
