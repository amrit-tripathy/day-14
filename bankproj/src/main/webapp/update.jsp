<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
/* General styling for the form container */
form {
    background-color: #ffffff; /* White background for the form */
    border-radius: 8px; /* Rounded corners for a modern look */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
    padding: 20px; /* Space inside the form */
    max-width: 400px; /* Maximum width of the form */
    margin: 20px auto; /* Center the form horizontally with margin */
    text-align: center; /* Center the text inside the form */
}

/* Styling for the form div (label) */
form div {
    font-size: 18px; /* Font size for the label text */
    color: #333333; /* Dark color for readability */
    margin-bottom: 15px; /* Space below the label */
}

/* Styling for the input field */
input[type="number"] {
    width: calc(100% - 22px); /* Full width minus padding and border */
    padding: 10px; /* Space inside the input field */
    border: 1px solid #cccccc; /* Light gray border */
    border-radius: 5px; /* Rounded corners for the input field */
    font-size: 16px; /* Font size for the input text */
    box-sizing: border-box; /* Includes padding and border in the element’s total width and height */
    margin-bottom: 20px; /* Space below the input field */
}

/* Styling for the submit button */
button {
    background-color: #007bff; /* Blue background color */
    border: none; /* Remove default border */
    border-radius: 5px; /* Rounded corners for the button */
    color: #ffffff; /* White text color */
    font-size: 16px; /* Font size for button text */
    padding: 10px 20px; /* Space inside the button */
    cursor: pointer; /* Pointer cursor on hover */
    transition: background-color 0.3s, box-shadow 0.3s; /* Smooth transition for hover effect */
}

/* Button hover state */
button:hover {
    background-color: #0056b3; /* Darker blue background on hover */
}

/* Button active state */
button:active {
    background-color: #004494; /* Even darker blue background when clicked */
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); /* Shadow effect for depth */
}

</style>
<body>

<form action="updateServelet" onsubmit="return validate()">
    <div>How much money you want to add</div>
    <input type="number" id="addamt" name="addamt">
    <button type="submit">Submit</button>
</form>

<script>
function validate(){
    let addamt = document.getElementById("addamt");
    if(addamt==0){
        return false;
    }
    else{
        return true;
    }
}
</script>

</body>
</html>