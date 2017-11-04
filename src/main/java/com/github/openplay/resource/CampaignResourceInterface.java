package com.github.openplay.resource;

import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;

import com.github.openplay.model.impl.Campaign;

public interface CampaignResourceInterface {
	
	public void createStudent(@RequestBody Campaign campaign);
	
	public Campaign getCampaignById(@PathVariable("id") int id);
	
	public List<Campaign> getAllCampaign();
	
	public void updateCampaign(@RequestBody Campaign campaign);
	
	 public void deleteSCampaign(@PathVariable("id") int id);

}
