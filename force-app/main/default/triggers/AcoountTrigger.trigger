trigger AcoountTrigger on Account (before insert, before update, after insert, after update) {
  

  //  system.debug('====Trigger START====');
    //if (trigger.isBefore) {
       // AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
   // }
    //if (trigger.isAfter && trigger.isUpdate) {
       // AccountTriggerHandler.updateVIPForAllContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
   // }
    
    //system.debug('====Trigger END====');
}








// 
// if(trigger.isInsert && trigger.isAfter){        
//     list<contact> cntList = new list<contact>();
//     for (account acc : trigger.new) {
//         for (Integer i = 1; i <= 7; i++) {
//             Contact cn = new Contact();
//             cn.FirstName = acc.Name;
//             cn.lastName = 'contact ' + i;
//             cn.accountId = acc.Id;
//             cntList.add(cn);
//         }
//     }

//     System.debug(cntList.size() +   'sayida contactlar create edildi..');
//     insert cntList;
// }

    // if(trigger.isInsert&&trigger.isBefore){
    //     System.debug('==========Before insert start========');
    //     System.debug('trigger new = ' + trigger.new);
    //     System.debug('trigger old = ' + trigger.old);
    //     System.debug('trigger new Map = ' + trigger.newMap);
    //     System.debug('trigger old Map = ' + trigger.oldMap);
    //      System.debug('==========Before insert end========');
    // }
    // if(trigger.isInsert&&trigger.isAfter){
    //     System.debug('==========After insert start========');
    //     System.debug('trigger new = ' + trigger.new);
    //     System.debug('trigger old = ' + trigger.old);
    //     System.debug('trigger new Map = ' + trigger.newMap);
    //     System.debug('trigger old Map = ' + trigger.oldMap);
    //      System.debug('==========After insert end========');
    // }
    // if(trigger.isUpdate&&trigger.isBefore){
    //     System.debug('==========Before update start========');
    //     System.debug('trigger new = ' + trigger.new);
    //     System.debug('trigger old = ' + trigger.old);
    //     System.debug('trigger new Map = ' + trigger.newMap);
    //     System.debug('trigger old Map = ' + trigger.oldMap);
    //      System.debug('==========Before Update end========');
        
    // }
    // if(trigger.isUpdate&&trigger.isBefore){
    //     System.debug('==========After update start========');
    //     System.debug('trigger new = ' + trigger.new);
    //     System.debug('trigger old = ' + trigger.old);
    //     System.debug('trigger new Map = ' + trigger.newMap);
    //     System.debug('trigger old Map = ' + trigger.oldMap);
    //      System.debug('==========After Update end========');
        
    // }




    
    
        





    




    // system.debug('====Trigger START====');
    // if (trigger.isBefore) {
    //     for (Account eachAcc : trigger.new) {
    //         //when inserted
    //         boolean updateDesc = false;
    //         if(trigger.isInsert && eachAcc.Active__c == 'Yes'){
    //             updateDesc = true;
    //         }
    //         //when updated
    //         if(Trigger.isUpdate){
    //             map<id, account> triggerOldMap = trigger.oldMap;
    //             Account oldAccount = triggerOldMap.get(eachAcc.Id);
    //             Account newAccount = eachAcc;
    //             if(newAccount.Active__c == 'Yes' && newAccount.Active__c != oldAccount.Active__c){
    //                 updateDesc = true;
    //             }
    //         }
    //         if(updateDesc){
    //             eachAcc.Description = 'Account is now active. Enjoy!!!!!';
    //         }
    //     }
    // }
    
    // system.debug('====Trigger END====');
    
   
    













//     if(trigger.isBefore){
//         for (Account eachAcc : trigger.new) {
//             if(trigger.isInsert&&eachAcc.Active__c=='Yes'){     
//             eachAcc.Description = 'Account is now Active.Enjoyy';
//             }
//             if(trigger.isUpdate){
//                 map<id, account>  triggerOldMap = trigger.oldMap;
//                 Account oldAccount =triggerOldMap.get(eachAcc.Id);

//                 account newAccount = eachAcc;
//                 if(newAccount.Active__c=='Yes'&&newAccount.Active__c!=oldAccount.Active__c){
//                     eachAcc.Description = 'Account is now Active.Enjoyy';
//                 }
//             }
//     }
// }
      
    //      system.debug('====Trigger START====');

    //      if(trigger.isAfter && trigger.isUpdate){
    //     integer countWebSiteUpdate = 0;

    //     map<id, account> trgOldMap = trigger.oldMap;
    //     map<id, account> trgNewMap = trigger.newMap;

    //     set<id> accIdSet = trgNewMap.keySet();

    //     for(Id eachId: accIdSet){
    //         account newAcc = trgnewmap.get(eachId);
    //         string newWebSite = newAcc.Website;

    //         account oldAcc = trgOldmap.get(eachId);
    //         string oldWebSite = oldAcc.Website;

    //         if(newWebSite != oldWebSite){
    //             system.debug('Acc Name : ' + newAcc.Name + ', website is changed TO ===>>> ' + newWebsite);
    //             countWebSiteUpdate++;
    //         }
    //     }
    //     system.debug('count of website updated accounts => ' + countwebsiteupdate);
    // }
    

        


    //      system.debug('====Trigger END====');


        
        
        
        
        
        
        
        
        
        
        
        
        
        //  if(trigger.isAfter&&trigger.isUpdate){
        //     map<id, account> trgOldMap = trigger.oldMap;
        //     map<id, account> trgNewdMap = trigger.NewMap;

        //     set<id> accidSet = trgNewdMap.keySet();

        //     for(id eachId : accidSet ) {
        //         system.debug('account id is ' +eachId );

        //         Account newAcc = trgNewdMap.get(eachId);
        //         system.debug('new acc name ' + newAcc.Name);

        //         Account oldAcc = trgOldMap.get(eachId);
        //         system.debug('old acc name ' + oldAcc.Name);

                // if(trigger.isBefore&&trigger.isInsert){
        //     system.debug('==============BEFORE INSERT============');
        //     system.debug('Old map==>' + trgOldMap);
        //     system.debug('new map==>' + trgNewdMap);

        // }
        // if(trigger.isAfter&&trigger.isInsert){
        //     system.debug('==============BEFORE INSERT============');
        //     system.debug('Old map==>' + trgOldMap);
        //     system.debug('new map==>' + trgNewdMap);

        // }
        // if(trigger.isBefore&&trigger.isUpdate){
        //     system.debug('==============BEFORE INSERT============');
        //     system.debug('Old map==>' + trgOldMap);
        //     system.debug('new map==>' + trgNewdMap);

        // }
        // if(trigger.isAfter&&trigger.isUpdate){
        //     system.debug('==============BEFORE INSERT============');
        //     system.debug('Old map==>' + trgOldMap);
        //     system.debug('new map==>' + trgNewdMap);

        // }

          //  if (trigger.isAfter && trigger.isUpdate){
        //     list<account> oldAcc = trigger.old;
        //     list<account> newAcc = trigger.new;

        //     for(account oldAccount : oldAcc){
        //         system.debug('old account id : ' + oldAccount.id + 'Old account name ' + oldAccount.Name);

        //     }
        //     for(account newAccount : newAcc){
        //         system.debug('New account id : ' + newAccount.id + 'new account name ' + newAccount.Name);
        //     }
        //  }

    // if (trigger.isBefore && trigger.isInsert) {
    //     system.debug('before insert trigger trigger.old = ' + trigger.old);
    // }
    // if (trigger.isAfter && trigger.isInsert) {
    //     system.debug('after insert trigger trigger.old = ' + trigger.old);

    // }
    // if (trigger.isBefore && trigger.isUpdate) {
    //     system.debug('before insert trigger trigger.old = ' + trigger.old);
    // }
    // if (trigger.isAfter && trigger.isUpdate) {
    //     system.debug('after insert trigger trigger.old = ' + trigger.old);
    // }

        

    // if (trigger.isBefore && trigger.isUpdate) {
    //     system.debug('before update trigger trigger.new = ' + trigger.new);
    // }
    // if (trigger.isAfter && trigger.isUpdate) {
    //     system.debug('after update trigger trigger.new = ' + trigger.new);
     
    
    // system.debug('====Trigger START====');
    // system.debug('====Trigger END====');
    // List<account> newAccounts = trigger.new;
    // if(trigger.isAfter&&trigger.isInsert){
    //     system.debug('after trigger trigger.new = ' + newAccounts);
    //     system.debug('size of trigger.new = ' + newAccounts.size());

    //     for (account eachAcc : newAccounts) {
    //         System.debug('account id is ' + eachAcc.id + ',each account name is ' + eachAcc.name);
            
    //     }
    // }
   
        // //insert
        // if(trigger.isBefore && trigger.isInsert){      
        // system.debug('Before insert trigger called.');
        // }
        // if(trigger.isAfter && trigger.isInsert){      
        // system.debug('Before update trigger called.');
        // }//for update

        // if(trigger.isBefore && trigger.isUpdate){      
        //     system.debug('Before insert trigger called.');
        //     }
        //     if(trigger.isAfter && trigger.isUpdate){      
        //     system.debug('Before update trigger called.yeey');
        //     }
        // system.debug('====Trigger END====');
    

        



 //System.debug('=============Trigger start============');
    //if(trigger.isBefore)
   // System.debug('before insert trigger');
    //if(trigger.isAfter){   
   // System.debug('after inser tiregger');
    
   // System.debug('====================Trigger End===========');

