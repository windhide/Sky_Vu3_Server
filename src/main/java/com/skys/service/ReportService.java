package com.skys.service;

import com.skys.pojo.Report;
import com.skys.mapper.ReportMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReportService {


    private ReportMapper reportMapper;

    @Autowired
    public ReportService(ReportMapper reportMapper) {
        this.reportMapper = reportMapper;
    }

    public List<Report> selectAllReport(){
        return reportMapper.selectAllReport();
    }

    public boolean insertReport(Report report) {return reportMapper.insertReport(report);}

    public boolean updateReport(Report report) {return reportMapper.updateReport(report); }

    public boolean deleteReport(int id) {return reportMapper.deleteById(id)!=0?true:false;}
}
