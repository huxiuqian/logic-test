package com.huxiuqianbs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huxiuqianbs.mapper.ReplyMapper;
import com.huxiuqianbs.pojo.Reply;
import com.huxiuqianbs.pojo.Rpy;
import com.huxiuqianbs.service.IReplyService;

@Service("IReplyService")
public class ReplyServiceImpl implements IReplyService{

	@Autowired
	private ReplyMapper replyMapper;

	@Override
	public List<Reply> getReply(int mid) {
		// TODO 自动生成的方法存根
		return replyMapper.getReply(mid);
	}

	@Override
	public int addReply(Reply reply) {
		// TODO 自动生成的方法存根
		return replyMapper.addReply(reply);
	}

	@Override
	public int repliesNum(int mid) {
		// TODO 自动生成的方法存根
		return 0;
	}

	@Override
	public List<Rpy> getRpy(int mid) {
		// TODO 自动生成的方法存根
		return replyMapper.getRpy(mid);
	}

}
