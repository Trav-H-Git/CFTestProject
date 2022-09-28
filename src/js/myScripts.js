const registerBtn = document.getElementById("register-btn");

registerBtn.addEventListener('click', function(e)
{
    e.preventDefault();
    window.location.replace("http://localhost:8500/CFTestProject/src/register.cfm");
    
});

