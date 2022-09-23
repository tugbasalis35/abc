public class StringDemoClass {
    public void stringMethod1 (){
        string sessionDescription = 'learning string method in apex language';
        system.debug('sessionDescription = '+ sessionDescription);

        integer lengthofstr = sessionDescription.length();
        system.debug('length of sessoinDescription is ' + lengthofstr);

        string sessionDescriptionInCaps = sessionDescription.toUpperCase();
        system.debug('in caps = ' + sessionDescriptionInCaps);

        boolean containsApex = sessionDescription.contains('apex');
        system.debug('contains apex? ' + containsApex);

        boolean containsSalesforce = sessionDescription.contains('salesforce');
        system.debug('contains salesforce? ' + containsSalesforce);

        //3.2 contains 'APEX'
        //when it comes to string, apex is case sensitive.
        boolean containsApex2 = sessionDescription.contains('APEX');
        system.debug('contains APEX? ' + containsApex2);

        boolean containsApex3 = sessionDescription.containsIgnoreCase('APEX');
        system.debug('contains APEX? ' + containsApex3);
    }
    

}
