<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .main {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 100px auto;
            max-width: 600px;
            padding: 20px;
            text-align: left;
        }

        .maintext {
            font-size: 24px;
            font-weight: bold;
            color: #333;
            margin-bottom: 20px;
            text-align:center;
        }

        .main div {
            margin-bottom: 10px;
        }

        .main div:first-child {
            margin-top: 0;
        }

        .main div:last-child {
            margin-bottom: 0;
        }

        .main div {
            font-size: 18px;
            color: #555;
        }

        .main div span {
            font-weight: bold;
            color: #333;
        }

    </style>
</head>
<body>
    <div class="main">
        <div class="maintext">Your details</div>
        <div>Name:${sessionScope.name}</div>
	    <div>Account Number:${sessionScope.accno}</div>
	    <div>Account Type:${sessionScope.acctype}</div>
	    <div>Balance:${sessionScope.money}</div>
    </div>
    
</body>
</html>