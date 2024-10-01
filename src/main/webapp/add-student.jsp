<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD Student</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-image: url('https://png.pngtree.com/thumb_back/fw800/background/20190223/ourmid/pngtree-student-book-advertising-background-backgroundblue-backgroundwhite-borderbookstudentknow-image_75794.jpg'); 
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
        margin: 0;
        padding: 0;
        overflow: hidden;
        animation: fadeIn 1s ease-in-out;
    }
    h1 {
        color: #ffffff;
        margin-top: 30px;
        animation: bounceIn 1.2s ease-in-out;
    }
    form {
        background-color: rgba(255, 255, 255, 0.8); /* Add transparency */
        border-radius: 10px;
        padding: 20px;
        width: 400px;
        box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.3);
        animation: fadeInUp 1s ease-in-out;
    }
    label {
        font-weight: bold;
        color: #0d47a1;
        animation: fadeInLeft 0.8s ease-in-out;
    }
    input[type="text"], input[type="tel"] {
        width: 100%;
        padding: 10px;
        margin: 5px 0 15px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        animation: fadeInRight 0.8s ease-in-out;
    }
    input[type="radio"], input[type="checkbox"] {
        margin-right: 10px;
        animation: fadeInRight 0.8s ease-in-out;
    }
    button {
        background-color: #0d47a1;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: transform 0.3s, background-color 0.3s;
        animation: bounceIn 1.2s ease-in-out;
    }
    button:hover {
        background-color: #1565c0;
        transform: scale(1.1);
    }
    .centered-div {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        flex-direction: column;
    }
    a button {
        background-color: #008CBA;
        margin-top: 20px;
        animation: fadeInUp 1.5s ease-in-out;
    }
    a button:hover {
        background-color: #007bb5;
        transform: scale(1.1);
    }

    /* Animations */
    @keyframes fadeIn {
        from {
            opacity: 0;
        }
        to {
            opacity: 1;
        }
    }

    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    @keyframes fadeInLeft {
        from {
            opacity: 0;
            transform: translateX(-20px);
        }
        to {
            opacity: 1;
            transform: translateX(0);
        }
    }

    @keyframes fadeInRight {
        from {
            opacity: 0;
            transform: translateX(20px);
        }
        to {
            opacity: 1;
            transform: translateX(0);
        }
    }

    @keyframes bounceIn {
        0% {
            opacity: 0;
            transform: scale(0.5);
        }
        60% {
            opacity: 1;
            transform: scale(1.2);
        }
        100% {
            transform: scale(1);
        }
    }
</style>
</head>
<body>
    <div class="centered-div">
        <h1>ADD Student Record</h1>
        
        <form action="add-student" method="post">
            
            <label>Name:</label>
            <input type="text" name="Name"><br>
            
            <label>Mobile:</label>
            <input type="tel" pattern="[0-9]{10}" name="Mobile"><br>
            
            <label>Gender:</label>
            <input type="radio" name="Gender" value="Male"> Male
            <input type="radio" name="Gender" value="Female"> Female <br><br>
            
            <label>Skills:</label>
            <input type="checkbox" name="Skills" value="Backend"> Back-End 
            <input type="checkbox" name="Skills" value="Frontend"> Front-End <br><br>
            
            <button type="submit">ADD</button>
        </form>

        <a href="/Spring_MVC_Student_Crud">
            <button>Home</button>
        </a>
    </div>
</body>
</html>
