<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Page</title>
    <style>
        /* Basic reset for margin and padding */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body styling */
        body {
            font-family: Arial, sans-serif; /* Font family for the page */
            background-color: #f4f4f4; /* Light gray background color */
            color: #333; /* Dark gray text color for contrast */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
        }

        /* Main container styling */
        .container {
            text-align: center; /* Center align text */
            background-color: #ffffff; /* White background for the container */
            border-radius: 8px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            padding: 20px; /* Padding inside the container */
            max-width: 400px; /* Maximum width of the container */
            width: 100%; /* Full width on smaller screens */
        }

        /* Heading styling */
        h1 {
            font-size: 2.5rem; /* Large font size for the heading */
            color: #007bff; /* Blue color for the heading */
            margin-bottom: 20px; /* Space below the heading */
        }

        /* Button styling */
        button {
            background-color: #007bff; /* Blue background color */
            border: none; /* Remove default border */
            border-radius: 5px; /* Rounded corners for the button */
            color: #ffffff; /* White text color */
            font-size: 1rem; /* Font size for button text */
            padding: 10px 20px; /* Padding inside the button */
            cursor: pointer; /* Pointer cursor on hover */
            transition: background-color 0.3s, transform 0.3s; /* Smooth transitions */
        }

        button:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        button:active {
            background-color: #004494; /* Even darker blue when clicked */
            transform: scale(0.98); /* Slightly reduce size on click for a pressing effect */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome</h1>
        <button onclick="redirectToCreateAccount()">Create Account</button>
    </div>

    <script>
        function redirectToCreateAccount() {
            window.location.href = "createAccount.jsp"; 
        }
    </script>
</body>
</html>
