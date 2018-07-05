
<cfset Greeting = CreateObject("Component", "greeting") />


<cfset Greeting.myThis = " ... Vidal" />

<cfset myGreeting = Greeting.getGreeting(firstName="Emily", lastName="Christiansen") />

<cfoutput>
    #myGreeting#
</cfoutput>

<style>
    body {background:#666;}
</style>