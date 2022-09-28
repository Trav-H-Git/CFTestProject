<cfif NOT isUserLoggedIn() OR NOT structkeyExists(session, 'stUser')>
    <cflocation url="index.cfm?authenticationRequired">
</cfif>