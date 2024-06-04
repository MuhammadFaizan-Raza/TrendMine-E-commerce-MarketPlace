<!DOCTYPE html>
<html lang="en"> 

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TrendMine | Login and Register </title>
    <style>
        body {
            background-color: #fff;
            color: #111;
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        form {
            width: 350px;
            margin: 0 auto;
            background-color: #f6f6f6fa;
            padding: 20px;
            border-radius: 4px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        img {
            max-width: 100%;
            height: auto;
            margin-bottom: 5px;
            width:60%
        }

        p {
            color: #111;
            font-size: 18px;
            margin-bottom: 20px;
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            box-sizing: border-box;
        }

        button {
            background-color: rgb(51, 51, 51);
            color: #fff;
            padding: 10px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
            width: 100%;
            margin-top: 10px;
        }

        button:hover {
            background-color: #636060;
        }

        a {
            color: #2670d4;
            text-decoration: none;
            display: block;
            margin-top: 20px;
        }

        a:hover {
            color: #175199;
        }
    </style>
</head>

<body>
    <form method="POST">
        <img src="../img/blackLogo.png" alt="Logo">
        <p>Verify Your Account</p>
        <input type="text" id="verifyCode" name="verifyCode" placeholder="Verification Code" required="required">
        <button type="submit">Verify</button>
        <p>Send Code Again?<a href="forgotPassword.html" style="display: inline-block; text-decoration: underline;">Resend</a></p>
    </form>
</body>

</html>
