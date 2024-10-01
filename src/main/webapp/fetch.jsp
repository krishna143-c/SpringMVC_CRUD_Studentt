<%@ page isELIgnored="false"%>
<%@page import="java.util.Arrays"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetch Student</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-image : url('https://c8.alamy.com/comp/2RYYMWC/smart-cloud-technology-with-a-technology-circle-background-with-an-intelligent-data-connection-by-collecting-data-through-the-system-and-fetching-dat-2RYYMWC.jpg');
        margin: 0;
        padding: 0;
    }
    h1 {
        color: #4CAF50;
        margin-top: 30px;
    }
    table {
        border-collapse: collapse;
        width: 80%;
        margin: 20px auto;
        box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.2);
    }
    th, td {
        padding: 12px;
        text-align: center;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #4CAF50;
        color: white;
    }
    tr:hover {
        background-color: #f1f1f1;
    }
    td {
        font-size: 16px;
        color: #333;
    }
    button {
        background-color: #0d47a1;
        color: white;
        padding: 8px 12px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    button:hover {
        background-color: #1976d2;
    }
    .centered-div {
        text-align: center;
        margin: 0 auto;
    }
</style>
</head>
<body>
    <div class="centered-div">
        <h1>${sucess}</h1>
        
        <table border="1">
            <tr>
                <th>Name</th>
                <th>Mobile</th>
                <th>Gender</th>
                <th>Skills</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <s:forEach var="k" items="${students}">
                <tr>
                    <td>${k.name}</td>
                    <td>${k.mobile}</td>
                    <td>${k.gender}</td>
                    <td>${Arrays.toString(k.skills)}</td>
                    <td>
                        <a href="edit?id=${k.id}">
                            <button type="button">Edit</button>
                        </a>
                    </td>
                    <td>
                        <a href="delete?id=${k.id}">
                            <button type="button">Delete</button>
                        </a>
                    </td>
                </tr>
            </s:forEach>
        </table>
    </div>
</body>
</html>
