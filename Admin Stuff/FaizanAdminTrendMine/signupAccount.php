<!DOCTYPE html>
<html lang="en"> 
<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Trendmine Register Form</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        body {
            background-color: #fff;
            color: #111;
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        div.container {
            text-align: center;
            background-color: #f6f6f6;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 100%;
            margin-top:80px;
        }

        input[type="checkbox"] {
            width: 20px;
            height: 20px;
            margin-right: 15px;
            cursor: pointer;
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
            width: 60%;
        }

        p {
            color: #111;
        }

        form {
            margin-top: 20px;
        }

        input,select {
            width: calc(100% - 22px);
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
            display: inline-block;
        }

        button {
            background-color: rgb(51, 51, 51);
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
            background-color: #333;
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
    <div class="container">
        <img src="../img/logo.svg" alt="Logo">
        <p>Register to create an account</p>
        <form method="POST">
            <input type="text" id="name" name="name" placeholder="Name" required="required">
            <input type="text" id="mobileOrEmail" name="mobileOrEmail" placeholder="Mobile Number or Email"
                required="required">
            <input id="password" type="password" name="password" placeholder="******" required="required">
            <input type="date" id="dob" name="dob" placeholder="Date of Birth">
            <input type="text" id="address" name="address" placeholder="Address">
            <select id="gender" name="gender">
                <option value="" disabled selected>Select Gender</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>
            <div>
                <input id="checkbox1" type="checkbox">
                <label for="checkbox1" class="checkboxText">Keep me logged in</label>
            </div>
            
            <button type="submit">Register</button>
        </form>
        <p>Or Register With</p>
        <ul class="fxt-socials">
            <li class="fxt-google"><a href="#" title="google"><i class="fab fa-google-plus-g"></i><span>Google +</span></a>
            </li>
            <li class="fxt-twitter"><a href="#" title="twitter"><i class="fab fa-twitter"></i><span>Twitter</span></a></li>
            <li class="fxt-facebook"><a href="#" title="Facebook"><i class="fab fa-facebook-f"></i><span>Facebook</span></a>
            </li>
        </ul>
        <p>Already have an account?<a href="login.html">Log in</a></p>
    </div>
    <script src="js validator add krna/validator.min.js"></script>
</body>

</html>



























