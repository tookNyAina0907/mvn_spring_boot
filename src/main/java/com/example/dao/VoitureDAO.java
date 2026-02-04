package com.example.dao;

import com.example.model.Voiture;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface VoitureDAO extends JpaRepository<Voiture, Long> {
    
    List<Voiture> findByMarque(String marque);
    List<Voiture> findByAnnee(Integer annee);
}