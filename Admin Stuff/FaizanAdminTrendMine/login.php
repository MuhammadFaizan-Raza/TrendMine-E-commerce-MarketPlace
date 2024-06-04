<!DOCTYPE html> 
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TrendMine login Form</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="../font/flaticon.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&amp;display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #fff;
            color: #111;
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        section {
            background-color: #f6f6f6;
            text-align: center;
            padding: 20px;
            border-radius: 10px;
            margin: 50px auto;
            max-width: 400px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        a {
            color: #2670d4;
            text-decoration: none;
        }
        a:hover {
            color: #175199;
        }
        img {
            max-width: 100%;
            height: auto;
			width:60%;
        }
        p {
            color: #111;
        }
        form {
            margin-top: 20px;
        }
        input.input1 {
            width: calc(100% - 22px);
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
            display: inline-block;
        }
        i {
            font-size: 18px;
            vertical-align: middle;
            cursor: pointer;
            margin-left: -20px;
        }

        button {
            background-color: #2670d4;
            color: #fff;
            padding: 10px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
            display: block;
            width: 100%;
            margin-top: 10px;
        }

        button:hover {
            background-color: #175199;
        }

        h3 {
            color: #111;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        ul li {
            display: inline-block;
            margin: 0 10px;
        }

        .fab {
            font-size: 24px;
            margin-right: 5px;
        }

        .fxt-socials a {
            color: #111;
        }

        .fxt-socials .fxt-facebook a {
            color: #3b5998;
        }

        .fxt-socials .fxt-twitter a {
            color: #00acee;
        }

        .fxt-socials .fxt-google a {
            color: #ff0000;
        }
    </style> 
</head>
<body>
    <section>
        <img src="../img/logo.svg" alt="Logo">
        <p>Login into your pages account</p>
        <form action="submit_login.php" method="POST">
            <input class="input1" type="email" id="email" name="email" placeholder="Email" required="required">
        <div >
            <input id="password" class="input1" type="password" name="password" placeholder="********" required="required">
        </div>
        <i toogle="password" class="fa-regular fa-eye" ></i>  
                   <div>
                    
                <input id="checkbox1" type="checkbox" >
                <label for="checkbox1"style="padding-right: 70px;">Keep me logged in</label>
                <a href="./forgotPassword.html">Forgot Password</a>
            </div>
            <button type="submit">Log in</button>
        </form>
        <div>
            <h3>Or Login With</h3>
        </div>
        <ul class="fxt-socials">
            <li class="fxt-google"><a href="#" title="google"><i class="fab fa-google-plus-g"></i><span>Google +</span></a></li>
            <li class="fxt-twitter"><a href="#" title="twitter"><i class="fab fa-twitter"></i><span>Twitter</span></a></li>
            <li class="fxt-facebook"><a href="#" title="Facebook"><i class="fab fa-facebook-f"></i><span>Facebook</span></a></li>
        </ul>
        <div>
            <p>Don't have an account?<a href="./signupAccount.html">Register</a></p>
        </div>
        <script src="./js validator add krna/validator.min.js"></script>
    </section>
</body>
</html>