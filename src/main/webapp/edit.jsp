<%@ page isELIgnored = "false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Student</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image : url('https://thumbs.dreamstime.com/z/wrench-tools-nuts-vintage-background-metallic-space-text-38079545.jpg');
        background-color: #f0f8ff;
        margin: 0;
        padding: 0;
    }
    h1 {
        color: orangered;
        margin-top: 30px;
    }
    form {
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
        padding: 20px;
        width: 400px;
    }
    label {
        font-weight: bold;
        color: #333;
    }
    input[type="text"], input[type="tel"] {
        width: 100%;
        padding: 10px;
        margin: 5px 0 15px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type="radio"], input[type="checkbox"] {
        margin-right: 10px;
    }
    button {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    button:hover {
        background-color: #45a049;
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
    }
    a button:hover {
        background-color: #007bb5;
    }
</style>
</head>
<body>
    <div class="centered-div">
        <h1>Edit Student</h1>
    
        <form action="update-student" method="post">
        
            <input type="hidden" name="id" value="${student.id}">
            
            <label>Name:</label>
            <input type="text" name="Name" value="${student.name}"><br>

            <label>Mobile:</label>
            <input type="tel" pattern="[0-9]{10}" name="Mobile" value="${student.mobile}"><br>

            <label>Gender:</label>
            <input type="radio" name="Gender" value="Male" ${student.gender == 'Male' ? 'checked' : ''}> Male
            <input 	type="radio" name="Gender" value="Female" ${student.gender == 'Female' ? 'checked' : ''}> Female <br><br>

            <label>Skills:</label>
           	<input type="checkbox" name="Skills" value="Backend" > Back-End
			<input type="checkbox" name="Skills" value="Frontend" > Front-End
			<br><br>
			<div align="center">
            <button type="submit">Update</button>
            </div>
        </form>
        <a href="/Spring_MVC_Student_Crud">
            <button>Home</button>
        </a>
    </div>
</body>
</html>
