component {
    this.myThis = " ... thisKeyword";
    variables.baseGreeting = "Hello, ";

    private string function getFullName (String firstName, String lastName) {
        var fullName = arguments.firstName & " " & arguments.lastName;
        return fullName;
    }

    public string function getGreeting (String firstName, String lastName) {

        var fullName = getFullName(argumentCollection=arguments);
        var greeting = variables.baseGreeting & fullName & this.myThis;
        return greeting;
    }
}

/*         <script>
            <cfoutput>
                console.log('Placement Category ID is #firstName#');
            </cfoutput>
        </script>
 */        