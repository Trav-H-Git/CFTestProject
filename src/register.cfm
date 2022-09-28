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
        <div class="register-container def-card">
            <h1 class="center-text">Request Account</h1>
            <cfform >
                <div class="form-container">
                    
                        <label for="first">First Name</label><input type="text" name="first" id="first">
                   
                   
                        <label for="last">Last Name</label><input type="text" name="last" id="last">
                   
                  
                        <label for="">Email</label><input type="text">
                   
                   
                        <label for="">Password</label><input type="text">
                    
                    
                        <label for="">Re-Enter Password</label><input type="text">
                  
                        <label for="reason">Reason for Request</label><textarea name="reason" id="reason" rows="6"></textarea>

                        <hr>
                        <input class="btn" role="submit" type="submit" value="Submit Request">
                    
                </div>
            </cfform>
        </div>
    </main>
        
</body>
</html>