<cfcomponent displayName="Simple HelloWorld component" output="false">
    <cffunction name="sayHello" access="remote" output="false" returnType="string">
        <cfargument name="nom" required="true" type="string" />
        <cfreturn "Hello, " & trim(arguments.nom) & "." />
    </cffunction>
</cfcomponent>

