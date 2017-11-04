package com.github.openplay.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.github.openplay.model.CampaignInterface;
import com.github.openplay.model.impl.Campaign;

@Repository("campaignRepository")
public interface CampaignRepository extends JpaRepository<Campaign, Long> {
	
	@Query()
	CampaignInterface createCampaign(CampaignInterface campaign);
	
	@Query("SELECT c FROM Campaign where c.campaignId = :campaign_id")
	CampaignInterface getCampaign(@Param("campaign_id")int campaign_id);
	
	@Query("DELETE FROM Campaign where campaignId = :campaign_id")
	boolean deleteCampaign(@Param("campaign_id")int campaign_id);
	
	@Query()
	CampaignInterface editCampaign(CampaignInterface campaign);
	
	
}
