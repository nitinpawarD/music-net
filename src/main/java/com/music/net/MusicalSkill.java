package com.music.net;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public class MusicalSkill {
	private int musicalSkillId;
	private String category;
	private String instruction;
	
	public MusicalSkill(int musicalSkillId, String category, String instruction) {
		this.musicalSkillId = musicalSkillId;
		this.category = category;
		this.instruction = instruction;
	}

	public int getMusicalSkillid() {
		return musicalSkillId;
	}

	public void setMusicalSkillid(int musicalSkillId) {
		this.musicalSkillId = musicalSkillId;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getInstruction() {
		return instruction;
	}

	public void setInstruction(String instruction) {
		this.instruction = instruction;
	}
	
	public static ArrayList<MusicalSkill> musicalCategoryList(Collection<MusicalSkill> input)  {   
		ArrayList<MusicalSkill> returnList = new ArrayList<MusicalSkill>(input);
 	    return returnList;	
	}
}
