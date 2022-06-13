package com.skys.Controller;

import com.skys.Entity.Report;
import com.skys.Service.ReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RestController
@RequestMapping("/report")
public class ReportController {

    @Autowired
    ReportService reportService;

    @RequestMapping("/select")
    public List<Report> selectAllReport(){return reportService.selectAllReport();}

    @RequestMapping("/insert")
    public boolean insertReport(Report report){return reportService.insertReport(report);}

    @RequestMapping("/update")
    public boolean updateReport(Report report){return reportService.updateReport(report);}

    @RequestMapping("/delete")
    public boolean deleteReport(int id){return reportService.deleteReport(id);}


}
