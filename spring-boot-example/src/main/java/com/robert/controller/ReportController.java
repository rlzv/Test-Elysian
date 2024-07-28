package com.robert.controller;

import com.robert.model.OrderReport;
import com.robert.service.ReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/report")
public class ReportController {

    @Autowired
    private ReportService reportService;

    @GetMapping("/orders")
    public List<OrderReport> getOrderReports() {
        return reportService.generateReport();
    }
}