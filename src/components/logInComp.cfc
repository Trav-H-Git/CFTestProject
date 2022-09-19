<cfcomponent output="false">

    <!--- public array validateUser(string userEmail, string userPassword)--->
    <cffunction name="validateUser" access="public" output="false" returntype="array">
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

    <!--- public boolean doLogin(string userEmail, string userPassword)--->
    <cffunction name="doLogin" access="public" output="false" returntype="boolean">
        <cfargument name="userEmail" type="string" required="true" />
        <cfargument name="userPassword" type="string" required="true" />

        <cfset var isUserLoggedIn = false />
        <cfquery name="rsUser">
            SELECT person_id, person_first_name, person_last_name, person_email, person_password, person_role
            FROM person
            WHERE person_email = #arguments.userEmail# AND person_password = #arguments.userPassword#
        </cfquery>

        <cfif rsUser.recordCount EQ 1>
            <cflogin>
                <cfloginuser name="#rsUser.person_last_name# #rsUser.person_last_name#" password="#rsUser.password#" roles="#rsUser.role#" />
            </cflogin>
            <cfset session.stUser = {'user_first_name' = rsUser.person_first_name, 'user_last_name' = rsUser.person_last_name, 'user_id' = rsUser.person_id} />
            <cfset var isUserLoggedIn = true />
        </cfif>

        

        <cfreturn isUserLoggedIn />

    </cffunction>

    <!--- public void doLogout()--->
    <cffunction name="doLogout" access="public" output="false" returntype="void">
       <cfset structDelete(session, 'stUser') />
       <cflogout/>
    </cffunction>
</cfcomponent>