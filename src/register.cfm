<!DOCTYPE html>
<html lang="en">
<head>
    <cfajaximport>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <main class="main-content flex-col">
        <div class="register-container def-card">
            <h1 class="center-text">Request Account</h1>
            <cfform name="registerform">
                <div class="form-container">
                 
                     <label for="first">First Name</label><input type="text" name="first" id="first">
                
                
                     <label for="last">Last Name</label><input type="text" name="last" id="last">
                
               
                     <label for="email">Email</label><input type="email" name="email" id="email">
                
                
                     <label for="pass">Password</label><input type="password" name="pass" id="pass">
                 
                 
                     <label for="repass">Re-Enter Password</label><input type="password" name="repass" id="repass">
               
                     <label for="reason">Reason for Request</label><textarea name="reason" id="reason" rows="6"></textarea>
                     <hr>
                     <input class="btn" role="submit" type="button" value="Submit Request" name="register-btn" id="register-btn">
                 
                    </div>
                </cfform>
        </div>
    </main>
    
    <script src="js/ajax.js"></script>
        
</body>
</html>