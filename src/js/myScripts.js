const registerBtn = document.getElementById("register-btn");

registerBtn.addEventListener('click', function(e)
{
    e.preventDefault();
    //prompt("Information needed");
    window.location.href = "http://localhost:8500/CFTestProject/src/register.cfm";
});