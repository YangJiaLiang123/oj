package com.etc.bean;

import java.util.Date;

public class AnswerInfo {
    private Integer id;

    private Studnet studnet;
    
    private Topic topic;
    
    private String situation;

    private Long memory;

    private Integer presetTime;

    private String language;

    private Date submitTime;
    
    private Integer length;
    
    private String judge;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getMemory() {
        return memory;
    }

    public void setMemory(Long memory) {
        this.memory = memory;
    }

    public Integer getPresetTime() {
        return presetTime;
    }

    public void setPresetTime(Integer presetTime) {
        this.presetTime = presetTime;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language == null ? null : language.trim();
    }

    public Date getSubmitTime() {
        return submitTime;
    }

    public void setSubmitTime(Date submitTime) {
        this.submitTime = submitTime;
    }

	public Studnet getStudnet() {
		return studnet;
	}

	public void setStudnet(Studnet studnet) {
		this.studnet = studnet;
	}

	public Topic getTopic() {
		return topic;
	}

	public void setTopic(Topic topic) {
		this.topic = topic;
	}

	public String getSituation() {
		return situation;
	}

	public void setSituation(String situation) {
		this.situation = situation;
	}

	public Integer getLength() {
		return length;
	}

	public void setLength(Integer length) {
		this.length = length;
	}

	public String getJudge() {
		return judge;
	}

	public void setJudge(String judge) {
		this.judge = judge;
	}
}