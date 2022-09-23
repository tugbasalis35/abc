@isTest
public  class SPTriggerHandlerTest {
   @isTest 
   public static void testMethod1() {
    Salesforce_Project__c sp = new Salesforce_Project__c();
    sp.Project_Name__c = 'Teach DML to Falcons';
    sp.Description__c = 'All are great learners';

    test.startTest();
    insert sp;
    test.stopTest();

    List<Salesforce_Project__c> listSP = [select id,description__c from Salesforce_Project__c];
    System.debug((listSP[0].Description__c));
    system.assert(listSP[0].Description__c.containsIgnoreCase('future'));
   }
}
