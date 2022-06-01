package com.skys.Service;

import com.skys.Entity.Report;
import com.skys.Mapper.Report_Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Report_Service {

    @Autowired
    Report_Mapper rm;

    public List<Report> selectAllReport(){
        return rm.selectAllReport();
    }

    public boolean insertReport(Report report) {return rm.insertReport(report);}

    public boolean updateReport(Report report) {return rm.updateReport(report); }

    public boolean deleteReport(int id) {return rm.deleteById(id)!=0?true:false;}
}
