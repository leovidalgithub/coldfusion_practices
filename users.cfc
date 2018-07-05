<cfcomponent>
<cfset attributes = structNew()>
    <cfscript>
        function init() {
            attributes.users = structNew();
            attributes.users.name = "";
            attributes.users.age = "";
            attributes.users.role = "";
            return this;
        }
        function get_name() {
            return attributes.users.name;
        }
        function set_name(_name) {
            attributes.users.name = arguments._name;
        }
    </cfscript>
</cfcomponent>