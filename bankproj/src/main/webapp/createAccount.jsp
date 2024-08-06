<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
   
    width:190px;
    text-align:center;
}
 select {
            font-size: medium;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            background-color: #ffffff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: border-color 0.3s, box-shadow 0.3s;
            width: 100%;
            max-width: 300px;
        }

        select:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
            outline: none;
        }

        option {
            font-size: 16px;
            padding: 10px;
        }
    </style>
</head>
<body>
<form action="createAccounts">
	<div class="container">
        <!-- Signup Form -->
            <h2>Sign up</h2>
            <div class="form-group">
                <label for="pin">Enter pin</label>
                <input type="number" id="pin" name="pin" required>
            </div>
            <div class="form-group">
                <label for="money">Enter Initial deposit:</label>
                <input type="number" id="money" name="money" required>
            </div>
            <div class="form-group">
                <label for="accno">Enter Account no.</label>
                <input type="number" id="accno" name="accno" required>
            </div>
            <div class="form-group" style="display:flex;flex-direction:row; gap:1rem;justify-content:center;align-items:center;">
                <label for="acctype">Account type:</label>
                <select name="acctype" id="acctype">
                    <option name="acctype" value="currentAccount">Current Account</option>
                    <option name="acctype" value="savingsAccount">Savings Account</option>
                </select>
            </div>
            
            <button type="submit" >Create</button>
    </div>
	
</form>

</body>
</html>