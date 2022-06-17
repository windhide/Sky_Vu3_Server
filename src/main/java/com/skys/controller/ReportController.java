package com.skys.controller;

import com.skys.pojo.Report;
import com.skys.service.ReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/report")
public class ReportController {

    private ReportService reportService;

    @Autowired
    public ReportController(ReportService reportService) {
        this.reportService = reportService;
    }

    @RequestMapping("/select")
    public List<Report> selectAllReport(){return reportService.selectAllReport();}

    @RequestMapping("/insert")
    public boolean insertReport(Report report){return reportService.insertReport(report);}

    @RequestMapping("/update")
    public boolean updateReport(Report report){return reportService.updateReport(report);}

    @RequestMapping("/delete")
    public boolean deleteReport(int id){return reportService.deleteReport(id);}


}
