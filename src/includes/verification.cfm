<!---start validate form --->
<cfset arrayErrors = arrayNew(1)/>
<!---cfset arrayClear(arrayErrors)/--->

<cfif structKeyExists(form, 'loginSubmit')>
    <!---cfset logInComp = createObject("component", "components/logInComp") /--->
   
    <cfset arrayErrors = application.logInComp.validateUser(form.loginEmail, form.loginPass) />
    <cfif arrayIsEmpty(arrayErrors)>
        <cfset isUserLoggedIn = application.logInComp.doLogin(form.loginEmail, form.loginPass) />
        
        <cfif NOT isUserLoggedIn>
            <cfset arrayAppend (arrayErrors, "Username or password not reconized") />
        <cfelse>
            <cflocation url="home.cfm" addToken="false" statusCode="301">
        </cfif>
    </cfif>

</cfif>
<!---end validate form --->
<!---display errors --->
<cfloop index="i" item="item" array="#arrayErrors#"> 
    <div class="alert">
        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
        <cfoutput>#item#</cfoutput> 
    </div>
</cfloop>