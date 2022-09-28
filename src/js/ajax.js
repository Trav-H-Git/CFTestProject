const registerBtn = document.getElementById("register-btn");

registerBtn.addEventListener('click', function(e)
{
    ColdFusion.Ajax.submitForm('registerform', 'includes/registerUser.cfm', callback,
    errorHandler);
    
});

function callback(text)
{
    alert(text);
   // window.location.replace("http://localhost:8500/CFTestProject/src/index.cfm?requestSubmitted");
}
function errorHandler(code, msg)
{
    alert("Error!!! " + code + ": " + msg);
}