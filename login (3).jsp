<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Animated Sign In Webpage</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <form action="/LoginData" autocomplete="off">
            <h2>Sign In</h2>
            <div class="uc"><b>ULTRA CODE</b></div>

            <div class="inputBox">
                <input type="text" id="user" name="Email" required>
                <label for="username">Username</label>
            </div>

            <div class="inputBox">
                <input type="password" id="pass" name="Pass" required>
                <label for="username">Enter Password</label>
            </div>

            <input type="submit" value="Login">
            <div class="link-container">
                <a href="#">Forgot Password?</a> 
            </div>
            <div class="link-container">
                <a href="#">Signup</a>
            </div>
        </form>
    </div>
</body>
</html>

<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    text-decoration: none;
    font-family: 'Poppins', sans-serif;
    /* animation: animateBg 5s linear infinite; */
}

    /* @keyframes animateBg {
        100% { filter: hue-rotate(360deg);}
    } */

body {
    background: url('https://i.postimg.cc/SRbN0Qxs/bg.jpg') no-repeat;
    background-size: cover;
    background-position: center;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

.container {
    position: relative;
    width: 500px;
    height: 500px;
    background: #0a0a0a;
    border-radius: 50%;
    overflow: hidden;
}

    .container::before {
        content: '';
        position: absolute;
        top: -50%;
        left: -50%;
        width: 500px;
        height: 500px;
        background: linear-gradient(90deg, transparent, #0598f7, #0598f7);
        transform-origin: bottom right;
        animation: animate 6s linear infinite;
    }

    .container::after {
        content: '';
        position: absolute;
        top: -50%;
        left: -50%;
        width: 500px;
        height: 500px;
        background: linear-gradient(90deg, transparent, #d31580, #d31580);
        transform-origin: bottom right;
        animation: animate 6s linear infinite;
        animation-delay: -3s;
    }

        @keyframes animate {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

form {
    position: absolute;
    inset: 2px;
    background: #28292d;
    border-radius: 50%;
    z-index: 1;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

h2 {
    position: absolute;
    top: 25px;
    color: #d31580;
    font-size: 2.5rem;
    font-weight: 500;
}

.uc {
    position: absolute;
    top: 100px;
    width: 300px;
    border-top: 1px solid #0598f7;
    text-align: center;
}

    .uc b {
        position: relative;
        top: -15px;
        width: 150px;
        height: 25px;
        color: #0598f7;
        background: #28292d;
        font-size: 16px;
        border: 1px solid #0598f7;
        border-radius: 50px;
        display: inline-block;
    }

.inputBox {
    position: relative;
    width: 320px;
    margin-top: 35px;
}

    .inputBox input {
        position: relative;
        width: 100%;
        padding: 12px 25px;
        border-radius: 50px;
        font-size: 1.1em;
        color: #26e060;
        background: transparent;
        outline: none;
        border: 1px solid #87a4bd;
        letter-spacing: .05em;
    }

    .inputBox label {
        position: absolute;
        left: 25px;
        top: 18px;
        color: #87a4bd;
        background: #28292d;
        padding: 0 2px;
        font-size: 13px;
        text-transform: uppercase;
        letter-spacing: .07em;
        transform: translateY(-27px);
        transition: transform .3s ease;
        pointer-events: none;
    }

input:invalid + label {
    transform: translateY(0);
    background: #28292d; 
}

input:focus { border-color: #26e060; }

input:focus + label {
    background: #28292d;
    color: #26e060;
    transform: translateY(-27px);
}

input[type="submit"] {
    position: relative;
    top: 40px;
    width: 320px;
    background: linear-gradient(to bottom, #0598f7, #4d26b8);
    padding: 10px;
    border-radius: 60px;
    font-size: 20px;
    font-weight: 600;
    cursor: pointer;
    border: 2px solid #0598f7;
    outline: 3px solid #28292d;
    transition: all .3s ease-in-out;
}

    input[type="submit"]:hover, input[type="submit"]:focus {
        outline: 3px solid #28292d;
        outline-offset: -6px;
        letter-spacing: .05em;
    }

.link-container {
    position: relative;
    top: 60px;
    width: 270px;
    display: flex;
    justify-content: center;
}

    .link-container:last-child { 
        margin-top: 15px;
        font-weight: 600; 
    }

    .link-container a {
        color: #87a4bd;
        font-size: 1em;
        text-decoration: none;
        transition: .3s ease;
    }

        .link-container a:hover {
            color: #26e060;
            text-decoration: underline;
        }

</style>