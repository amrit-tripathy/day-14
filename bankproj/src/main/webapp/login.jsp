<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="credstyle.css">
    <style>
        body{
    margin-top: 5rem;
    display: flex;
    justify-content: center;
    align-items: center;
}
h2{
    text-align: center;
}
input{
    width:400px;
    padding: 10px 20px;
    font-size: 1rem;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
.form-group{
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-bottom: 0.5rem;
}
.container{
    display: flex;
    flex-direction: column;
    align-items: center;
    width: 400px;
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 400px;
}
button[type="submit"]{
    color: white;
    background-color: #007bff;
    padding: 10px 30px;
    border-radius: 10px;
    border: 1px solid  #9cc6f2;
    width: 100%;
    margin-top: 0.5rem;
    font-size: medium;
    font-family: 'Times New Roman', Times, serif;
    font-weight:500;
    transition:  0.3s ease;
}
button[type="submit"]:hover {
    background-color: #0056b3;
}
.form-group label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
}
    </style>
</head>
<body>
<form action="loginServelet">
    <div class="container">
        <div class="form-container">
    <form id="login-form" class="form">
        <h2>Login</h2>
        <div class="form-group">
            <label for="login-name">UserName</label>
            <input type="text" id="login-name" name="username" required>
        </div>
        
        <div class="form-group">
            <label for="login-password">Password</label>
            <input type="password" id="login-password" name="login-password" required>
        </div>
        <button type="submit">Login</button>
    </form>
    </div>
    </div>
 </form>
    
</body>
</html>