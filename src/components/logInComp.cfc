<cfcomponent output="false">
    <cffunction name="validate" access="public" output="false" returntype="array">
        <cfargument name="userEmail" type="string" required="true" />
        <cfargument name="userPassword" type="string" required="true" />

        <cfset var arrayError=Arraynew(1)/>
        <cfif NOT isValid('email', arguments.userEmail)>
            <cfset arrayAppend (arrayError, "Please provide a valid email address.") />
        </cfif>
        <cfif arguments.userPassword EQ ''>
            <cfset arrayAppend (arrayError, "Please provide a password.") />
        </cfif>
        <cfreturn arrayError />
    </cffunction>
</cfcomponent>