package com.skys.Controller;

import com.skys.Entity.Report;
import com.skys.Service.Report_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RestController
@RequestMapping("/report")
public class Report_Controller {

    @Autowired
    Report_Service rs;

    @RequestMapping("/select")
    public List<Report> selectAllReport(){return rs.selectAllReport();}

    @RequestMapping("/insert")
    public boolean insertReport(Report report){return rs.insertReport(report);}

    @RequestMapping("/update")
    public boolean updateReport(Report report){return rs.updateReport(report);}

    @RequestMapping("/delete")
    public boolean deleteReport(int id){return rs.deleteReport(id);}


}
