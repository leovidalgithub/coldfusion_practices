<style>
    body {background : #666;margin-bottom:48px;}
    h1,h2,h3,h4,h5,h6 {margin : 5px;}
</style>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<cfparam name='url.last' default="Rodriguez">
<cfscript>
    param name = 'url.name' default="Who you are???";
    param name = 'url.age' default=25;
    myVar = "ColdFusion is awesome!";
    myAge = 19;
    halfAge = myAge/2;
    roundedAge = Round(halfAge);
    serverName = cgi.server_name;
    templatePath = cgi.CF_TEMPLATE_PATH;
    yourLast = url.last;
</cfscript>

<cfset yourName = url.name>

<cfoutput>
    <h3>Hi!!!</h3>
    <strong>#myVar#</strong></br>
    <strong>#myAge#</strong></br>
    #halfAge#</br>
    <strong>#roundedAge#</strong></br>
</cfoutput>

<cfoutput>
    We are running <b>#serverName#</b> and the path is <b>#templatePath#</b></br>
    Your name : #yourName# #yourLast#</br>
</cfoutput>
<cfdump  var="#url#">

<!--- <cfset myFakeVar = "Hi!"> --->
<cftry> // TRY CATCH BLOCK
    <cfoutput>
        My NON-EXIST variable : #myFakeVar#
    </cfoutput>
<cfcatch>
    <!--- <cfdump  var="#cfcatch#"> --->
    <h3>CF CATCH here!</h3>
</cfcatch>
<cffinally>
    <cfoutput>
        <b>Try Finally</b></br>
    </cfoutput>
</cffinally>
</cftry>

<cfscript> // STRUCTURES
    family = structNew();
    family.father = "Hipo";
    family.mother = "Caty";
</cfscript>
<cfoutput>
    Family Structure FATHER : #family.father#</br>
    MOTHER : #family.mother#</br>
</cfoutput>

<cfscript> // LISTS
    param name = "url.q" default = 2;
    question = "What is your name?, What is your age?, What is your profession?";
    fromURL = listGetAt(question, url.q);
</cfscript>
<cfoutput>
    The third question in the list is : <strong>#listGetAt(question, 3)#</strong>
    The third question in the list is : <strong>#listGetAt(question, 3)#</strong>
    <ul>
        <li><a href="?q=1">What is your name?</a></li>
        <li><a href="?q=2">What is your age?</a></li>
        <li><a href="?q=3">What is your profession?</a></li>
    </ul>
    The user asked for the question : <b>#fromURL#</b>
</cfoutput>

<hr><h3>cfloop 1</h3>
<cfscript>
    param name = "url.w" default = "What is your name?" type="any";
    myQuestions = "What is your name?, What is your age?, What is your profession?";
    myAnswers = "Nafis, Ahmed, 19, Programmer";
    fromURL = listContains(myQuestions, url.w);
</cfscript>
<cfoutput>
    Q : <strong>#listGetAt(myQuestions, fromURL)#</strong></br>
    A : <strong>#listGetAt(myAnswers, fromURL)#</strong></br>
    fromURL : <strong>#fromURL#</strong></br>
</cfoutput>
<cfloop list=#myQuestions# index="i">
    <cfoutput>
        <a href="?w=#i#">*#i#</a></br>
    </cfoutput>
</cfloop>

<hr><h3>while loop 1</h3>
<cfscript>
    i = 0;
    while(i<2) {
        writeOutput(i & " While loop</br>");
        i++;
    }
    do {
        writeOutput(i & " Do While loop</br>");
        i++;
    } while(i<6);
</cfscript>

<hr><h3>for loop 1</h3>
<cfscript>
    for(i=0; i<=5; i++) {
        writeOutput(i & " for loop</br>");
    }
</cfscript>

<hr><h3>Array</h3>
<cfscript>
    param name = "url.faq" default = 1 type = "any";
    faq = arrayNew(1);
    faq[1] = structNew();
    faq[1].question = "What is your profession?";
    faq[1].answer = "Programmer";
    faq[2] = structNew();
    faq[2].question = "What is your name?";
    faq[2].answer = "Nafis Ahmed";
    faq[3] = structNew();
    faq[3].question = "Where do you live?";
    faq[3].answer = "Dhaka";
    writeOutput(faq[url.faq].question & "</br>");
    writeOutput(faq[url.faq].answer & "</br>");
</cfscript>
<cfloop from="1" to="#ArrayLen(faq)#" index="i">
    <cfoutput>
        <a href="?faq=#i#">#faq[i].question#</a></br>
    </cfoutput>
</cfloop>
<cfdump var="#faq#">

<hr><h3>Conditionals</h3>
<cfscript>
    lotteryNumber = randRange(1, 64);
    if(isNumeric(lotteryNumber)) {
        writeOutput(lotteryNumber & " is Numeric</br>");
        if(lotteryNumber>=20) {
            writeOutput(lotteryNumber & " is equal or greater than 20");
        } else {
            writeOutput(lotteryNumber & " is smaller than 20");
        }
    } else {
        writeOutput(lotteryNumber & " is Not Numeric");
    }
</cfscript>

<hr><h3>Switch Conditionals</h3>
<cfset switchVar = 15>
<cfswitch expression="#switchVar#">
    <cfcase value=33>
        <cfoutput>
            <strong>Switch case 33 : #switchVar#</strong></br>
        </cfoutput>
    </cfcase>
    <cfcase value=55>
        <cfoutput>
            <strong>Switch case 55 : #switchVar#</strong></br>
        </cfoutput>
    </cfcase>
    <cfdefaultcase>
        <cfoutput>
            <strong>Switch cfdefaultcase : #switchVar#</strong></br>
        </cfoutput>
    </cfdefaultcase>
 </cfswitch>















<script>
    $( document ).ready(() => {
        $("html, body").animate({ scrollTop: $(document).height() }, 'slow');
    });
</script>
