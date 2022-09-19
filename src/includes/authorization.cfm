<!---start validate form --->
<cfif structKeyExists(form, 'loginSubmit')>
    <!---cfset logInComp = createObject("component", "components/logInComp") /--->
    <cfoutput>struct exists</cfoutput>
    <cfset session.arrayErrors = application.logInComp.validateUser(form.loginEmail, form.loginPass) />
    <cfif arrayIsEmpty(session.arrayErrors)>
        <cfset isUserLoggedIn = application.logInComp.doLogin(form.loginEmail, form.loginPass) />
    <cfelse>
        <p> <cfloop index="i" item="item" array="#session.arrayErrors#"> 
            <cfoutput>#i#</cfoutput> 
            
            <cfoutput>#item#</cfoutput> 
        </cfloop></p>
    </cfif>
<cfelse>
    <cfoutput>no form struct exists</cfoutput>
</cfif>
<!---end validate form --->