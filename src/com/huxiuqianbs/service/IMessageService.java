package com.huxiuqianbs.service;

import java.util.List;

import com.huxiuqianbs.pojo.Message;
import com.huxiuqianbs.pojo.Msg;

public interface IMessageService {
	List<Message> getTalkMessage();
	List<Msg> getTalkMsg();
	List<Message> getChatMessage();
	List<Msg> getChatMsg();
	List<Message> getJobMessage();
	List<Msg> getJobMsg();
	List<Message> getMessage(int mid);
	int addMessage(Message message);
	void delMessage(int mid);
	List<Msg> selectByTopic(String topic);
	List<Msg> selectChatByTopic(String topic);
	List<Msg> selectJobByTopic(String topic);
}
