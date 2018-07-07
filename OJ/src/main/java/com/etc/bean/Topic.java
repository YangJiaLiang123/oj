package com.etc.bean;

import java.util.Date;
import java.util.List;

public class Topic {
	private Integer topicId;

    private String title;

    private String source;

    private Integer timeLimit;

    private Integer memoryLimit;

    private Integer accepted;

    private Integer solved;

    private Integer submit;

    private Integer submitUser;

    private Date createDate;

    private String author;

    private Integer dificulty;
    
    private String description;

    private String input;

    private String output;

    private String sampleInput;

    private String sampleOutput;

    private String hint;

    private Byte scroe;

    private Boolean visible;

    private Boolean spj;
    
    private List<Studnet> students;

    private List<Match> matchs;
    
    public Integer getTopicId() {
        return topicId;
    }

    public void setTopicId(Integer topicId) {
        this.topicId = topicId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getInput() {
        return input;
    }

    public void setInput(String input) {
        this.input = input == null ? null : input.trim();
    }

    public String getOutput() {
        return output;
    }

    public void setOutput(String output) {
        this.output = output == null ? null : output.trim();
    }

    public String getSampleInput() {
        return sampleInput;
    }

    public void setSampleInput(String sampleInput) {
        this.sampleInput = sampleInput == null ? null : sampleInput.trim();
    }

    public String getSampleOutput() {
        return sampleOutput;
    }

    public void setSampleOutput(String sampleOutput) {
        this.sampleOutput = sampleOutput == null ? null : sampleOutput.trim();
    }

    public String getHint() {
        return hint;
    }

    public void setHint(String hint) {
        this.hint = hint == null ? null : hint.trim();
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source == null ? null : source.trim();
    }

    public Integer getTimeLimit() {
        return timeLimit;
    }

    public void setTimeLimit(Integer timeLimit) {
        this.timeLimit = timeLimit;
    }

    public Integer getMemoryLimit() {
        return memoryLimit;
    }

    public void setMemoryLimit(Integer memoryLimit) {
        this.memoryLimit = memoryLimit;
    }

    public Integer getAccepted() {
        return accepted;
    }

    public void setAccepted(Integer accepted) {
        this.accepted = accepted;
    }

    public Integer getSolved() {
        return solved;
    }

    public void setSolved(Integer solved) {
        this.solved = solved;
    }

    public Integer getSubmit() {
        return submit;
    }

    public void setSubmit(Integer submit) {
        this.submit = submit;
    }

    public Integer getSubmitUser() {
        return submitUser;
    }

    public void setSubmitUser(Integer submitUser) {
        this.submitUser = submitUser;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author == null ? null : author.trim();
    }

    public Integer getDificulty() {
        return dificulty;
    }

    public void setDificulty(Integer dificulty) {
        this.dificulty = dificulty;
    }

	public List<Studnet> getStudents() {
		return students;
	}

	public void setStudents(List<Studnet> students) {
		this.students = students;
	}

	public List<Match> getMatchs() {
		return matchs;
	}

	public void setMatchs(List<Match> matchs) {
		this.matchs = matchs;
	}

	public Byte getScroe() {
		return scroe;
	}

	public void setScroe(Byte scroe) {
		this.scroe = scroe;
	}

	public Boolean getVisible() {
		return visible;
	}

	public void setVisible(Boolean visible) {
		this.visible = visible;
	}

	public Boolean getSpj() {
		return spj;
	}

	public void setSpj(Boolean spj) {
		this.spj = spj;
	}
}