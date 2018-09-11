package com.huxiuqianbs.mapper;

import java.util.List;

import com.huxiuqianbs.pojo.Reply;
import com.huxiuqianbs.pojo.Rpy;

public interface ReplyMapper {

    List<Reply> getReply(int mid);
    List<Rpy> getRpy(int mid);
    int addReply(Reply reply);
}
