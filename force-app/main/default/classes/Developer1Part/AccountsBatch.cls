public with sharing class AccountsBatch implements Database.Batchable<sObject>,database.stateful {
    integer updateCount = 0;
   public Database.QueryLocator start(Database.BatchableContext bc){
    System.debug('############ inside start######');
    Database.QueryLocator q1 = database.getQueryLocator([select id,description,Active__c from account]);
    return q1;
   }

   public void execute(Database.BatchableContext bc,List<account> scope){
    System.debug('######INSIDE EXECUTE#########');
    list<account> updateAccounts = new list<account>();
    for (account acc : scope) {
        if (acc.active__c != 'No') {
            acc.Description += '...updated via BATCH.';
            updateAccounts.add(acc);
            updateCount++;
           
        }
    }
    System.debug('updateCount at the end of method = ' + updateCount);
    update updateAccounts;
   }
   public void finish(Database.BatchableContext bc){
    System.debug('######INSIDE FINISH######');
    System.debug('finish====================');
    
   }
}
