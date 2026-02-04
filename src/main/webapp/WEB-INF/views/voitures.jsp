<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${titre}</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f4;
        }
        h1 {
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>
    <h1>${titre}</h1>
    
    <c:if test="${empty voitures}">
        <p>Aucune voiture disponible.</p>
    </c:if>
    
    <c:if test="${not empty voitures}">
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Marque</th>
                    <th>Modèle</th>
                    <th>Année</th>
                    <th>Prix (€)</th>
                    <th>details</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="voiture" items="${voitures}">
                    <tr>
                        <td>${voiture.id}</td>
                        <td>${voiture.marque}</td>
                        <td>${voiture.modele}</td>
                        <td>${voiture.annee}</td>
                        <td>${voiture.prix}</td>
                        <td><a href="/voitures/detail/${voiture.id}"> voir details</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
    <a href="/voitures/pageSave">Ajouter car</a>
</body>
</html>