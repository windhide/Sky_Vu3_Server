package com.skys.service;

import com.skys.mapper.ReportMapper;
import com.skys.pojo.Report;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReportServiceImp implements ReportService {


    private ReportMapper reportMapper;

    @Autowired
    public ReportServiceImp(ReportMapper reportMapper) {
        this.reportMapper = reportMapper;
    }

    public List<Report> selectAllReport() {
        return reportMapper.selectAllReport();
    }

    public boolean insertReport(Report report) {
        return reportMapper.insertReport(report);
    }

    public boolean updateReport(Report report) {
        return reportMapper.updateReport(report);
    }

    public boolean deleteReport(int id) {
        return reportMapper.deleteById(id) != 0 ? true : false;
    }
}
