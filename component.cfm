<cfinvoke component="Hello"
        method="sayHello"
        nom="Peter"
        returnVariable="greeting" />
<cfoutput><p>1) #greeting#</p></cfoutput>

<cfinvoke component="Hello"
        method="sayHello"
        returnVariable="greeting">
    <cfinvokeargument name="nom" value="Peter">
</cfinvoke>
<cfoutput><p>2) #greeting#</p></cfoutput>


<cfset vars = StructNew() />
<cfset vars.nom = "Peter" />
<cfinvoke component="Hello"
        method="sayHello"
        argumentCollection="#vars#"
        returnVariable="greeting" />
<cfoutput><p>3) #greeting#</p></cfoutput>


<cfobject name="cfc" component="Hello" />
<cfoutput><p>4) #cfc.sayHello("Peter")#</p></cfoutput>


<cfscript>
    cfc = createObject("component", "Hello");
    greeting = cfc.sayHello("Peter");
    writeOutput("<p>5) " & greeting & "</p>");
</cfscript>


<cfscript>
    greeting = createObject("component", "Hello").sayHello("Peter");
    writeOutput("<p>6) " & greeting & "</p>");
</cfscript>