<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        
        background-image : url('https://th.bing.com/th/id/OIP.dt6j90eWMIqu1ZqR98oVZwHaEK?rs=1&pid=ImgDetMain');
        background-size: cover;
   		background-position: center;  
    	background-repeat: no-repeat; 
        margin: 0;
        padding: 0;
    }
    h1 {
        font-size: 36px;
        margin-top: 30px;
    }
    h1:first-of-type {
        animation: fadeInDown 1s ease-in-out;
    }
    h1:nth-of-type(2) {
        animation: bounceIn 1.5s ease-in-out;
        color: green;
    }
    button {
        background-color: #4CAF50;
        color: white;
        padding: 12px 24px;
        border: none;
        border-radius: 8px;
        font-size: 18px;
        cursor: pointer;
        transition: transform 0.3s, background-color 0.3s;
        margin: 20px;
        animation: fadeInUp 1.2s ease-in-out;
    }
    button:hover {
        background-color: #45a049;
        transform: scale(1.1);
    }
    a {
        text-decoration: none;
    }
    .centered-div {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
        animation: fadeIn 1.5s ease-in-out;
    }

    /* Animation keyframes */
    @keyframes fadeInDown {
        from {
            opacity: 0;
            transform: translateY(-20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
    
    @keyframes bounceIn {
        0% {
            opacity: 0;
            transform: scale(0.3);
        }
        50% {
            opacity: 1;
            transform: scale(1.05);
        }
        70% {
            transform: scale(0.9);
        }
        100% {
            transform: scale(1);
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
</style>
</head>
<body>
    <div class="centered-div">
        <h1>Home Page</h1>
        <h1>${sucess}</h1>
        
        <a href="add-student">
            <button>Add Student</button>
        </a>
        <a href="fetch-students">
            <button>Fetch Records</button>
        </a>
    </div>
</body>
</html>