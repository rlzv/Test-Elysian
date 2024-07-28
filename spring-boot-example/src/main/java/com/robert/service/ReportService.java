package com.robert.service;

import com.robert.entity.*;
import com.robert.model.OrderReport;
import com.robert.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ReportService {

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private OrderLineRepository orderLineRepository;

    @Autowired
    private PharmacyRepository pharmacyRepository;

    @Autowired
    private ProductRepository productRepository;

    public List<OrderReport> generateReport() {
        List<OrderReport> reports = new ArrayList<>();

        List<Order> orders = orderRepository.findAll();
        for (Order order : orders) {
            Pharmacy pharmacy = pharmacyRepository.findById(order.getPharmacyId()).orElse(null);
            if (pharmacy == null) continue;

            List<OrderLine> orderLines = orderLineRepository.findByOrderId(order.getId());
            for (OrderLine line : orderLines) {
                Product product = productRepository.findById(line.getProductId()).orElse(null);
                if (product == null) continue;

                reports.add(new OrderReport(pharmacy.getName(), product.getName(), line.getQuantity()));
            }
        }
        return reports;
    }
}