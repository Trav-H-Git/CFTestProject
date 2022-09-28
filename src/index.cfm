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
    
    <main class="main-content flex-col">
        <cfinclude template="includes/verification.cfm"/>
            <div class="log-in-container def-card">
                <h1 class="center-text">Log In</h1>
                
                <cfform autocomplete="off" method="post" preservedata="true">
                    <div class="form-container">
                        <cfinput type="text" name="loginEmail" id="loginEmail" placeholder="Email">
                         <cfinput type="password" name="loginPass" id="loginPass" placeholder="Password">
                         <cfinput class="btn" role="submit" type="submit" name="loginSubmit" id="loginSubmit" value="Login">
                         <hr>
                         <button class="btn" id="register-btn" role="register">Request Account</button>
                     </div>
                </cfform>
                    
            </div> 
    </main>
    <script src="js/myScripts.js"></script>
</body>

</html>