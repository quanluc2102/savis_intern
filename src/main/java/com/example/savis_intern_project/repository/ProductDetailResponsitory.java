package com.example.savis_intern_project.repository;


import com.example.savis_intern_project.entity.ProductDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface ProductDetailResponsitory extends JpaRepository<ProductDetail, UUID> {
}