package com.etc.inteface;

import com.rabbitmq.client.Channel;
import com.rabbitmq.client.Connection;
import com.rabbitmq.client.ConnectionFactory;

public class Send {
	public final static String QUEUE_QUE="submit_QUES";
	public final static String QUEUE_REC="judge_RES";
	public final static String QUEUE_HOST="10.7.82.94";
	public final static String QUEUE_USER="admin";
	public final static String QUEUE_PWD="admin";
	public static void send(String name,String msg) {
		try {
			ConnectionFactory factory = new ConnectionFactory();
			factory.setHost("10.7.82.94");
			factory.setUsername("admin");
			factory.setPassword("admin");
			Connection connection = factory.newConnection();
			Channel channel = connection.createChannel();
			channel.queueDeclare(name, true, false, false, null);
			channel.basicPublish("", name, null, msg.getBytes());
			System.out.println("[MQ]Sent to "+name+":'" + msg + "'");
			channel.close();
			connection.close();
		} catch (Exception e){
			System.out.println(e);
		}
	}
}
