<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .main{
            display:flex;
            flex-direction: column;
            align-items: center;
            justify-content: space-between;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 100px auto;
            max-width: 600px;
            padding: 20px;
        }
        button {
            background-color: #007bff;
            padding :10px 20px;
            border:none;
            border-radius: 7px;
            color:whitesmoke;
            text-align: center;
            font-size: 16px; 
            cursor: pointer;
            margin: 10px;
            max-width:300px;
            width:100%;
        }
        .text{
            font-family: 'Arial', sans-serif; 
            font-size: 28px; 
            font-weight: bold; 
            color: #333333; 
        }
button:hover {
    background-color: #0056b3; /* Darker background on hover */
}
    </style>
</head>
<body>
    <div class="main">
        <div class="text">Dashboard</div>
        <button onclick="redirectTobankdetails()">bank details </button>
        <button onclick="redirectTowithdraw()">withdraw</button>
        <button onclick="redirectTodeleteaccount()">delete account</button>
        <button onclick="redirectToaddMoney()">Add money to your account</button>
        <button onclick="redirectToUpdatePin()">update pin</button>
    </div>
   


    <script>
        function redirectTobankdetails(){
            window.location.href = 'bankDetails.jsp';
        }
        function redirectTowithdraw(){
            window.location.href = 'withdraw.jsp';
        }
        function redirectTodeleteaccount(){
            window.location.href = 'delete.jsp';
        }
        function redirectToaddMoney(){
            window.location.href = 'update.jsp';
        }
        function redirectToUpdatePin(){
            window.location.href = 'updatePin.jsp';
        }
    </script>
    
    
</body>
</html>