<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Withdraw Amount</title>
    <style>
        /* Basic reset for margin and padding */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body styling */
        body {
            font-family: Arial, sans-serif; /* Font for the entire page */
            background-color: #f4f4f4; /* Light gray background color */
            color: #333; /* Dark text color */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
        }

        /* Main container styling */
        .container {
            background-color: #ffffff; /* White background for the form container */
            border-radius: 8px; /* Rounded corners for a modern look */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
            padding: 20px; /* Space inside the container */
            max-width: 400px; /* Maximum width of the container */
            width: 100%; /* Full width on smaller screens */
            text-align: center; /* Center-align text inside the container */
        }

        /* Form label styling */
        .container > div {
            font-size: 18px; /* Font size for the label text */
            color: #333333; /* Dark color for readability */
            margin-bottom: 20px; /* Space below the label */
        }

        /* Input field styling */
        input[type="number"] {
            width: calc(100% - 22px); /* Full width minus padding and border */
            padding: 10px; /* Space inside the input field */
            border: 1px solid #cccccc; /* Light gray border */
            border-radius: 5px; /* Rounded corners */
            font-size: 16px; /* Font size for input text */
            box-sizing: border-box; /* Includes padding and border in total width and height */
            margin-bottom: 20px; /* Space below the input field */
        }

        /* Button styling */
        button {
            background-color: #007bff; /* Blue background color */
            border: none; /* Remove default border */
            border-radius: 5px; /* Rounded corners */
            color: #ffffff; /* White text color */
            font-size: 16px; /* Font size for button text */
            padding: 10px 20px; /* Padding inside the button */
            cursor: pointer; /* Pointer cursor on hover */
            transition: background-color 0.3s, transform 0.3s; /* Smooth transitions */
        }

        button:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        button:active {
            background-color: #004494; /* Even darker blue when clicked */
            transform: scale(0.98); /* Slightly scale down the button on click */
        }

        /* Message styling */
        .message {
            font-size: 16px; /* Font size for the message */
            color: #ff0000; /* Red color for error messages */
            margin-top: 10px; /* Space above the message */
        }
    </style>
</head>
<body>
    <div class="container">
        <div>How much amount do you want to withdraw?</div>
        <form action="withdrawAmtServelet" onsubmit="return validateAmount()">
            <input id="amt" name="amt" type="number" min="0" required>
            <button type="submit">Submit</button>
        </form>
        <div class="message"></div>
    </div>

    <script>
        function validateAmount() {
            let amtInput = document.getElementById("amt");
            let amt = parseInt(amtInput.value);
            let msg = document.getElementsByClassName("message")[0];
            
            if (amt >= 1000) {
                msg.innerHTML = "Overdraft limit exceeded. Please enter a valid amount.";
                return false; // Prevent form submission
            }
            msg.innerHTML = ""; // Clear message if amount is valid
            return true; // Allow form submission
        }
    </script>
</body>
</html>
