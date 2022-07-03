package com.skys.service;

import com.skys.pojo.Report;

import java.util.List;

public interface ReportService {

    public List<Report> selectAllReport();

    public boolean insertReport(Report report);

    public boolean updateReport(Report report);

    public boolean deleteReport(int id);

}