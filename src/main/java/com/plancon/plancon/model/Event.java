package com.plancon.plancon.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="EVENT")
public class Event implements Serializable{

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	
	@NotEmpty
	@Column(name="TITLE", nullable=false)
	private String title;
	
	@NotEmpty
	@Column(name="OWNER", nullable=false)
	private String owner;
		
	@NotEmpty
	@Column(name="DATE", nullable=false)
	private String date;

	@NotEmpty
	@Column(name="START_TIME", nullable=false)
	private String starttime;

	@NotEmpty
	@Column(name="END_TIME", nullable=false)
	private String endtime;
	
	@NotEmpty
	@Column(name="SPEAKER", nullable=false)
	private String speaker;

	@NotEmpty
	@Column(name="AUDIENCE", nullable=false)
	private String audience;
	
	@NotEmpty
	@Column(name="ROOM", nullable=true)
	private String room;
	
	@Column(name="VOLUNTEER", nullable=true)
	private String volunteer;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getStarTime() {
		return starttime;
	}

	public void setStartTime(String starttime) {
		this.starttime = starttime;
	}
	
	public String getEndTime() {
		return endtime;
	}

	public void setEndTime(String endtime) {
		this.endtime = endtime;
	}
	
	public String getSpeaker() {
		return speaker;
	}

	public void setSpeaker(String speaker) {
		this.speaker = speaker;
	}
	
	public String getAudience() {
		return audience;
	}

	public void setAudience(String audience) {
		this.audience = audience;
	}
	
	public String getRoom() {
		return audience;
	}

	public void setRoom(String room) {
		this.room = room;
	}

	public String getVolunteer() {
		return audience;
	}

	public void setVoluteer(String volunteer) {
		this.volunteer = volunteer;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		return result;
	}

	/*
	 * DO-NOT-INCLUDE passwords in toString function.
	 * It is done here just for convenience purpose.
	 */
	@Override
	public String toString() {
		return "User [id=" + id + ", Title=" + title + ", Owner=" + owner
				+ ", volunteer=" + volunteer + ", audience=" + audience
				+ ", room=" + room + "]";
	}


	
}