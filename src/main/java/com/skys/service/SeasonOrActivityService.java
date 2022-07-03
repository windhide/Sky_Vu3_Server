package com.skys.service;

import com.skys.pojo.SeasonOrActivity;

import java.util.List;

public interface SeasonOrActivityService {
    public List<SeasonOrActivity> selectAllSeasonOrActivity();

    public List<SeasonOrActivity> selectAllSeasonOrActivityForDaohang();

    public boolean insertSeassonOrActivity(SeasonOrActivity soa);

    public boolean deleteSeassonOrActivity(int id);

    public boolean updateSeassonOrActivity(SeasonOrActivity soa);
}
