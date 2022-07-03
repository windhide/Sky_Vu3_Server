package com.skys.service;

import com.skys.pojo.Reprint;

import java.util.List;

public interface ReprintService {
    public List<Reprint> getAllReprint();

    public boolean insertReprint(Reprint reprint);

    public boolean updateReprint(Reprint reprint);

    public boolean deleteReprint(int id);
}
