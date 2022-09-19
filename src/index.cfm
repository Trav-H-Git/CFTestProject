<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="grid-row-1">
         <div class="log-in-container">
             <h1 class="center-text">Log In</h1>
            
                <cfform autocomplete="off" method="post" action="home.cfm" preservedata="true">
                    <div class="form-container">
                         <cfinput type="text" name="loginEmail" id="loginEmail" placeholder="Email">
                         <cfinput type="password" name="loginPass" id="loginPass" placeholder="Password">
                         <cfinput class="btn" role="submit" type="submit" name="loginSubmit" id="loginSubmit" value="Login">
                         <hr>
                         <button class="btn" role="register">Request Account</button>
                    </div>
                </cfform>

         </div>
    </div>
</body>
</html>