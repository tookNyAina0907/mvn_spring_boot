package com.example.service;

import com.example.dao.VoitureDAO;
import com.example.model.Voiture;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class VoitureService {
    
    @Autowired
    private VoitureDAO voitureDAO;
    
    public List<Voiture> getAllVoitures() {
        return voitureDAO.findAll();
    }
    
    public Optional<Voiture> getVoitureById(Long id) {
        return voitureDAO.findById(id);
    }
    
    public Voiture saveVoiture(Voiture voiture) {
        return voitureDAO.save(voiture);
    }
    
    public void deleteVoiture(Long id) {
        voitureDAO.deleteById(id);
    }
    
    public List<Voiture> getVoituresByMarque(String marque) {
        return voitureDAO.findByMarque(marque);
    }
}