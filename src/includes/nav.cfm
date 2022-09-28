<nav class="main-nav flex-row-spaced flex-align-center">
    <div class="nav-title-container f">
        <h1 class="font-90 font-clr-accent hide-sm">Website</h1>
    </div>
    <div class="nav-tabs-container flex-row-spaced flex-align-center">

        <div class="nav-tab active-tab">Home<a href=""></a></div>
        <div class="nav-tab">Favorite<a href=""></a></div>
        <div class="nav-tab">About<a href=""></a></div>
    </div>
    <div class="nav-profile-container flex-row-spaced flex-align-center">
        <cfoutput>
            <div class="hide-sm">
                <p>Welcome, user</p>
                <p>#session.stUser.firstName# #session.stUser.lastName#</p>
            </div>
        </cfoutput>
       
        <div class="flex-col">
            <button class="btn" role="profile"><a href="index.cfm">Profile</a></button>
            <cfif isDefined("form.logout")>
                <cfoutput>#application.logInComp.doLogout()#</cfoutput>
                <cflocation url="index.cfm?logout">
            </cfif>
            <cfform>    
                <cfinput name="logout" type="submit" value= "Logout" class="btn" role="log-out">L</cfinput>
            </cfform>
        </div>
    </div>

</nav>
