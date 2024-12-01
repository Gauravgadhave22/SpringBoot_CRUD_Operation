<!DOCTYPE html>  
<html lang="en">  
<head>  
    <meta charset="UTF-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  
    <title>Registration Form</title>  
   
</head>  
<body>  
    <div class="container">  
        <h2>Edit Here</h2>  
        <form action="/updatedata" method="post">  
            <label for="fname"><b>First Name</b></label> 
            <input type="hidden"  name="id" value="${kk.id}" placeholder="Enter First Name" required>  
             
            <input type="text" id="fname" name="fname" value="${kk.fname}" placeholder="Enter First Name" required>  
  
            <label for="lname"><b>Last Name</b></label>  
            <input type="text" id="lname" name="lname" value="${kk.lname}" placeholder="Enter Last Name" required>  
  
            <label for="email"><b>Email</b></label>  
            <input type="email" id="email" name="email" value="${kk.email}" placeholder="Enter Email" required>  
  
            <label for="psw"><b>Password</b></label>  
            <input type="password" id="psw" name="password" value="${kk.password}" placeholder="Enter Password" required>  
  
            <label for="psw-repeat"><b>Repeat Password</b></label>  
            <input type="password" id="psw-repeat" name="conpass" value="${kk.conpass}" placeholder="Repeat Password" required>  
  
            <label for="mobile"><b>Contact</b></label>  
            <input type="text" id="mobile" name="mobile" value="${kk.mobile}" maxlength="10" placeholder="Enter Contact Number" required>  
  
            <label for="gender"><b>Gender</b></label>  
            <select id="gender" name="gender"  required>  
                <option value="male">Male</option>  
                <option value="female">Female</option>  
                <option value="other">Other</option>  
            </select>  
  
            <button type="submit">update</button>  
        </form>  
    </div>  
</body>  
</html>  

<style>

/* Basic Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    background-color: white;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 90%;
    max-width: 400px;
}

h2 {
    text-align: center;
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 8px;
    font-weight: bold;
}

input, select, button {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
}

button {
    background-color: #4CAF50;
    color: white;
    font-size: 16px;
    cursor: pointer;
}

button:hover {
    background-color: #45a049;
}

input[type="text"], input[type="email"], input[type="password"] {
    font-size: 16px;
}

select {
    font-size: 16px;
    cursor: pointer;
}

button:disabled {
    background-color: #aaa;
}



</style>