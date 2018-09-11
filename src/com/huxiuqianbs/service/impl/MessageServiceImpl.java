package com.huxiuqianbs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.huxiuqianbs.mapper.MessageMapper;
import com.huxiuqianbs.pojo.Message;
import com.huxiuqianbs.pojo.Msg;
import com.huxiuqianbs.service.IMessageService;

@Service("IMessageService")
public class MessageServiceImpl implements IMessageService{
	
	@Autowired
	private MessageMapper messageMapper;

	@Override
	public List<Message> getTalkMessage() {
		// TODO 自动生成的方法存根
		return messageMapper.getTalkMessage();
	}
	
	@Override
	public List<Message> getChatMessage() {
		// TODO 自动生成的方法存根
		return messageMapper.getChatMessage();
	}
	
	@Override
	public List<Message> getJobMessage() {
		// TODO 自动生成的方法存根
		return messageMapper.getJobMessage();
	}

	@Override
	public int addMessage(Message message) {
		// TODO 自动生成的方法存根
		return messageMapper.addMessage(message);
	}

	@Override
	public List<Message> getMessage(int mid) {
		// TODO 自动生成的方法存根
		return messageMapper.getMessage(mid);
	}

	@Override
	public void delMessage(int mid) {
		// TODO 自动生成的方法存根
		messageMapper.delMessage(mid);
	}

	@Override
	public List<Msg> getTalkMsg() {
		// TODO 自动生成的方法存根
		return messageMapper.getTalkMsg();
	}

	@Override
	public List<Msg> getChatMsg() {
		// TODO 自动生成的方法存根
		return messageMapper.getChatMsg();
	}

	@Override
	public List<Msg> getJobMsg() {
		// TODO 自动生成的方法存根
		return messageMapper.getJobMsg();
	}

	@Override
	public List<Msg> selectByTopic(String topic) {
		// TODO 自动生成的方法存根
		return messageMapper.selectByTopic(topic);
	}

	@Override
	public List<Msg> selectChatByTopic(String topic) {
		// TODO 自动生成的方法存根
		return messageMapper.selectChatByTopic(topic);
	}

	@Override
	public List<Msg> selectJobByTopic(String topic) {
		// TODO 自动生成的方法存根
		return messageMapper.selectJobByTopic(topic);
	}

}
