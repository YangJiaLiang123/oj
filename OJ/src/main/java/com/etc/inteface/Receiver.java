package com.etc.inteface;

import com.etc.bean.AnswerInfo;
import com.etc.common.DynamicDataSourceHolder;
import com.etc.service.AnswerInfoService;
import com.rabbitmq.client.*;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Component;

//	@Resource
//	private Receiver receiver;

//	@PostConstruct
//	public void todo(){
//		if(!receiver.running)
//			receiver.receive();
//	}
@Component
public class Receiver {
	private static final Receiver single = new Receiver();
	public static Receiver getInstance() {
		return single;
	}

	public static boolean running = false;

	public static AnswerInfoService answerInfoService=null;

	public final static String QUEUE_QUE="submit_QUES";
	public final static String QUEUE_REC="judge_RES";
	public final static String QUEUE_HOST="localhost";
	public final static String QUEUE_USER="guest";
	public final static String QUEUE_PWD="qweasd";

	static {
		receive();
	}
//	@PostConstruct
	public static void receive(){
		try {
			System.out.println("receive run");
			ConnectionFactory factory = new ConnectionFactory();
			factory.setHost("10.7.82.94");
			factory.setUsername("admin");
			factory.setPassword("admin");
			Connection connection = factory.newConnection();
			Channel channel = connection.createChannel();
			channel.queueDeclare(QUEUE_REC, true, false, false, null);
			System.out.println(" [*] Waiting for messages. To exit press CTRL+C");
			Consumer consumer = new DefaultConsumer(channel) {
				@Override
				public void handleDelivery(String consumerTag, Envelope envelope, AMQP.BasicProperties properties, byte[] body) {
					try {
						todo(consumerTag,envelope,properties,body);
					} catch (Exception e){
						System.out.println(e);
					}
				}
			};
			channel.basicConsume(QUEUE_REC, true, consumer);
		} catch (Exception e){
			System.out.println(e);
		}
	}

	private static boolean todo(String consumerTag, Envelope envelope, AMQP.BasicProperties properties, byte[] body) throws Exception{
		String message = new String(body, "UTF-8");
		JSONObject data = new JSONObject(message);
		JSONArray test_case = data.getJSONArray("test_case");
		System.out.println("[MQ]Receiver:"+data.toString());
		if (test_case.toString().contains("\"err\"")){
			System.out.println("err");
			int id = data.getInt("id");
			AnswerInfoService answerInfoService=new AnswerInfoService();
			AnswerInfo answerInfo = answerInfoService.selectByPrimaryKey(id);
			answerInfo.setSituation(-3+"");//compile wrong // -2 wait // -1 wrong // 0 ...
			answerInfoService.updateByPrimaryKeySelective(answerInfo);
		} else {
			int id = data.getInt("id");
			System.out.println(id);
			DynamicDataSourceHolder.setDataSource("topicdataSource");
			AnswerInfo answerInfo = answerInfoService.selectByPrimaryKey(id);
			System.out.println(answerInfo.getSituation());
			int use_cpu_time=-1;
			int use_real_time=-1;
			long use_memory=-1;
			JSONObject this_case;
			boolean breakflag = false;
			System.out.println(test_case.length());
			for (int i=0;i<test_case.length();i++){
				System.out.println("check");
				this_case=test_case.getJSONObject(i);
				if (this_case.getInt("result")==-1){
					System.out.println("-1");
					answerInfo.setSituation(-1+"");//wrong
					answerInfoService.updateByPrimaryKeySelective(answerInfo);
					breakflag=true;
					break;
				}
				if (this_case.getInt("result")==1){
					System.out.println("1");
//					answerInfo.setSituation(1+"");//CPU_TIME_LIMIT_EXCEEDED
//					System.out.println(answerInfo.getSituation());
					AnswerInfo answerInfo1 = new AnswerInfo();
					answerInfo1.setId(answerInfo.getId());
					System.out.println("id:"+answerInfo.getId());
					answerInfo1.setSituation("1");
					answerInfoService.updateByPrimaryKeySelective(answerInfo1);
					breakflag=true;
					break;
				}
				if (this_case.getInt("result")==2){
					System.out.println("2");
//					answerInfo.setSituation(String.valueOf(2));//REAL_TIME_LIMIT_EXCEEDED
					AnswerInfo answerInfo1 = new AnswerInfo();
					answerInfo1.setId(answerInfo.getId());
					System.out.println("id:"+answerInfo.getId());
					answerInfo1.setSituation("2");
					answerInfoService.updateByPrimaryKeySelective(answerInfo1);
					breakflag=true;
					break;
				}
				if (this_case.getInt("result")==3){
					System.out.println("3");
					answerInfo.setSituation(3+"");//MEMORY_LIMIT_EXCEEDED
					answerInfoService.updateByPrimaryKeySelective(answerInfo);
					breakflag=true;
					break;
				}
				if (this_case.getInt("result")==4){
					System.out.println("4");
					answerInfo.setSituation(4+"");//RUNTIME_ERROR
					answerInfoService.updateByPrimaryKeySelective(answerInfo);
					breakflag=true;
					break;
				}
				if (this_case.getInt("result")==5){
					System.out.println("5");
					answerInfo.setSituation(5+"");//sys
					answerInfoService.updateByPrimaryKeySelective(answerInfo);
					breakflag=true;
					break;
				}
				use_cpu_time=use_cpu_time>this_case.getInt("cpu_time")?use_cpu_time:this_case.getInt("cpu_time");
				use_real_time=use_real_time>this_case.getInt("real_time")?use_real_time:this_case.getInt("real_time");
				use_memory=use_memory>this_case.getInt("memory")?use_memory:this_case.getInt("memory");
			}
			if(!breakflag){
				answerInfo.setSituation(0+"");
				answerInfo.setPresetTime(use_cpu_time);
				answerInfo.setMemory(use_memory);
				answerInfoService.updateByPrimaryKeySelective(answerInfo);
			}
		}
		return false;
	}
}
