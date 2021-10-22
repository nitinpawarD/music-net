package com.music.net;

import java.util.List;

public class ArtistData {

	private Integer artistId;
	private String name;
	private String description;
	private List musicalSkill;
	
	public ArtistData(Integer artistId, String name, String description, List musicalSkill) {
		this.artistId = artistId;
		this.name = name;
		this.description = description;
		this.musicalSkill = musicalSkill;
	}

	public Integer getArtistId() {
		return artistId;
	}

	public void setArtistId(Integer artistId) {
		this.artistId = artistId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List getMusicalSkill() {
		return musicalSkill;
	}

	public void setMusicalSkill(List musicalSkill) {
		this.musicalSkill = musicalSkill;
	}
}
