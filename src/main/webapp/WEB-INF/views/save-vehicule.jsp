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
    
    <form action="/voitures/save" method="post">
        <table>
            <tr>
                <td><label for="marque">Marque:</label></td>
                <td><input type="text" id="marque" name="marque" required></td>
            </tr>
            <tr>
                <td><label for="modele">Modèle:</label></td>
                <td><input type="text" id="modele" name="modele" required></td>
            </tr>
            <tr>
                <td><label for="annee">Année:</label></td>
                <td><input type="number" id="annee" name="annee" required></td>
            </tr>
            <tr>
                <td><label for="prix">Prix (€):</label></td>
                <td><input type="number" id="prix" name="prix" step="0.01" required></td>
            </tr>
            <tr>
                <td colspan="2">
                    <button type="submit">Enregistrer la voiture</button>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>