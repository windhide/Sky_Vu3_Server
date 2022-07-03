package com.skys.service;

import com.skys.controller.UploadController;
import com.skys.mapper.SpritMapper;
import com.skys.pojo.MiniMap;
import com.skys.pojo.SeasonOrActivity;
import com.skys.pojo.Sprit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class SpritServiceImp implements SpritService {
    Integer AllPage = 0;
    Integer ListCount = 18;
    boolean lock = false;
    private SpritMapper spritMapper;
    private SeasonOrActivityService seasonOrActivityService;
    private MiniMapService miniMapService;
    private UploadController uc;

    @Autowired
    public SpritServiceImp(SpritMapper spritMapper, SeasonOrActivityService seasonOrActivityService, MiniMapService miniMapService, UploadController uc) {
        this.spritMapper = spritMapper;
        this.seasonOrActivityService = seasonOrActivityService;
        this.miniMapService = miniMapService;
        this.uc = uc;
    }


    public List<Sprit> SelectAllSprit() {
        List<Sprit> list = spritMapper.SelectAllSprit();
        List<MiniMap> miniList = miniMapService.selectAllMiniMap();
        List<SeasonOrActivity> soaList = seasonOrActivityService.selectAllSeasonOrActivity();
        List<Sprit> list2 = new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            for (int b = 0; b < soaList.size(); b++)
                if (list.get(i).getSrID() == soaList.get(b).getSrID()) list.get(i).setSeasonOrActivity(soaList.get(b));
            for (int a = 0; a < miniList.size(); a++)
                if (list.get(i).getMiniMapID() == miniList.get(a).getMiniMapID())
                    list.get(i).setMiniMap(miniList.get(a));
            list2.add(list.get(i));
        }
        return list2;
    }

    public List<Sprit> selectBySpritsPage(int id) {
        List<Sprit> list = SelectAllSprit();
        List<Sprit> list1 = new ArrayList<>();
        for (int i = (id - 1) * ListCount; i < id * ListCount; i++)
            try {
                list1.add(list.get(i));
            } catch (Exception e) {
                break;
            }
        // 此处为分页
        return list1;
    }

    public List<Sprit> SelectSprit(String sereachData, String SeasonName, String MaxmapName) {
        List<Sprit> list = SelectAllSprit();
        List<Sprit> mainList = new ArrayList<Sprit>();
        sereachData = sereachData.trim();
        for (Sprit sp : list) {
            if (sp.getSpritName().indexOf(sereachData) != -1 || sereachData.equals("") || sereachData.equals("全部") || sereachData == null)
                if (sp.getMiniMap().getMaxMap().getMaxName().equals(MaxmapName) || MaxmapName.equals("全部"))
                    if (sp.getSeasonOrActivity().getSrName().equals(SeasonName) || SeasonName.equals("全部"))
                        mainList.add(sp);
        }
        return mainList;
    }

    public int SelectSpritPage() {
        AllPage = (SelectAllSprit().size() / ListCount) + 1;
        return AllPage;
    }

    public boolean insertSprit(Sprit sprit) {
        return spritMapper.insertSprit(sprit);
    }


    public boolean DeleteSprit(int id) {
        Sprit sprit = selectBySpritID(id);
        if (spritMapper.DeleteSprit(id)) {
            uc.uploadDelete(sprit.getSpritCost());
            uc.uploadDelete(sprit.getSpritLink());
            return true;
        } else
            return false;
    }

    public Sprit selectBySpritID(int id) {
        return spritMapper.selectByspritID(id);
    }

    public boolean updateSprit(Sprit sprit) {
        Sprit oldsprit = selectBySpritID(sprit.getSpritID());
        Sprit newsprit = sprit;
        if (newsprit.getSpritCost() == null || newsprit.getSpritCost().equals(""))
            newsprit.setSpritCost(oldsprit.getSpritCost());
        else
            uc.uploadDelete(oldsprit.getSpritCost());
        if (newsprit.getSpritLink() == null || newsprit.getSpritLink().equals(""))
            newsprit.setSpritLink(oldsprit.getSpritLink());
        else
            uc.uploadDelete(oldsprit.getSpritLink());
        return spritMapper.updateSprit(newsprit);
    }
}