public  class SOQL_Assignment {
    public static void soql_WhereClause () {
        list<contact> lstcontact = [select id, lastName from Contact where LastName like '%a%'];
        system.debug('records with A ' + lstcontact);
        system.debug('contact record whit size ' + lstcontact.size());
        
        }
    public static void soql_formethod() {
        list<contact> lstcontact =[select id,name,LastName,Phone from contact];
        for (Contact eachcontact : lstcontact) {
            string eachphone = eachcontact.Phone;
            string eachLast = eachcontact.LastName;
            System.debug('The contact\'s last name is  ' + eachlast + 'The contact phone number is '+ eachphone);
        }
    }
}
