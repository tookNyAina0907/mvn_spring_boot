package com.example.controller;

import java.util.List;
import java.util.Optional;

import org.apache.commons.logging.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.model.Voiture;
import com.example.service.VoitureService;

@Controller
@RequestMapping("/voitures")
public class VoitureController {
    
    @Autowired
    private VoitureService voitureService;
    
    @GetMapping("/liste")
    public String listeVoitures(Model model) {
        List<Voiture> voitures = voitureService.getAllVoitures();
        model.addAttribute("voitures", voitures);
        model.addAttribute("titre", "Liste des Voitures");
        return "voitures";
    }

    @GetMapping("/detail/{id}")
    public String DetailVoitures(Model model ,@PathVariable("id") int id) {
        Long ids = Long.parseLong(Integer.toString(id));
        List<Voiture> voitures = List.of(voitureService.getVoitureById(ids).orElse(null));
        model.addAttribute("voitures", voitures);
        model.addAttribute("titre", "Détails de la voiture");
        return "detail-voiture";
    }

    @PostMapping("/save")
    public String saveVoiture(Voiture voiture) {
        voitureService.saveVoiture(voiture);
        return "redirect:/voitures/liste";
    }

    @GetMapping("/pageSave")
    public String pageSaveVoiture(Model model) {
        model.addAttribute("voiture", new Voiture());
        return "save-vehicule";
    }
    
}