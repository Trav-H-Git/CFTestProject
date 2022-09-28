<cfset local.v = structKeyExists(form, "first")>
<!---cfoutput>#local.v#</cfoutput--->
<!---validate form inputs --->
 <cfif false>
     <cfoutput>
         passwords are not the same.
     </cfoutput>
 <cfelse><!---make new person entry in database --->
     <cfquery>
         INSERT INTO cfusers.person (person_first_name, person_last_name, person_email, person_password, person_fave_color, person_role) 
         VALUES ('#form.first#', 'd', 'd', 'd', 1, 'awaitingAprroval');
     </cfquery>
 </cfif>