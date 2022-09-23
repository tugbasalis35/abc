@isTest
public with sharing class AccountTriggerHandlerTest {
   @isTest
   private static void testMethod1() {
    List<account> listAcc = new list<account>();
    account a = new account();
     a.name = 'SI Test';
     a.Industry = 'Energy';
     a.Type = 'Customer - Direct';
     listAcc.add(a);
     account a1 = new account();
     a1.name = 'UI Test';
     a1.Industry = 'Energy';
     a1.Type = 'Customer - Direct';
     a1.Active__c = 'Yes';
     listAcc.add(a1);

     account a2 = new account();
     a2.name = 'PI Test';
     a2.Industry = 'Banking';
     a2.Type = 'Customer - Direct';
     listAcc.add(a2);

     insert listAcc;

     list<account> accounts1 = [select id,description,active__c from account where Active__c = 'Yes'];
     system.assertEquals(1, accounts1.size());
     system.assertEquals('Account is now active. Enjoy!!!!!', accounts1[0].Description);

     for (account acc : listAcc) {
        acc.Active__c = 'Yes';
     }
     update listAcc;

     list<account> accounts2 = [select id,description,active__c from account where Active__c = 'Yes'];
     system.assertEquals(3, accounts2.size());

     for (account eachAcc : accounts2) {
        system.assertEquals('Account is now active. Enjoy!!!!!', accounts2[0].Description);
     
     }
     
}
@isTest
private static void testvipFieldUpdate() {
    List<account> listAcc = new list<account>();
    account a = new account();
    a.name = 'SI Test';
    a.Industry = 'Energy';
    a.Type = 'Customer - Direct';
    listAcc.add(a);

    account a1 = new account();
    a1.name = 'UI Test';
    a1.Industry = 'Energy';
    a1.Type = 'Customer - Direct';
    a1.Active__c ='Yes';
    listAcc.add(a1);
    insert listAcc;

    list<contact> listContact = new list<contact>();
    for (Integer i = 0; i < 200; i++) {
      contact c = new contact();
      c.LastName = 'Test cnt ' + i;
      if(i < 100){
        c.AccountId = a.id;
      } else {
        c.accountid = a1.id;
      }
      listContact.add(c);
    }
    insert listContact;

    for (account eachAcc : listAcc) {
      eachAcc.VIP__c = true;
    }
    update listAcc;

    list<contact> contacts = [select id, name, vip__c from contact];
    system.assertEquals(true, contacts[0].VIP__c);

 }
}
        


