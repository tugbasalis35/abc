trigger ContactTrigger on Contact (before insert, before update, after insert, after update,after delete, after undelete) {



    if(Trigger.isBefore && trigger.isUpdate){
        //call handler method HERE.
        ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
}
    if(trigger.isAfter){
        set<id> accountIds = new set<id>();

        if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
            for (contact eachContact : trigger.new) {
                if(eachContact.AccountId != null){
                    accountIds.add(eachContact.AccountId);
                }
            }
        }
        if(trigger.isUpdate || trigger.isDelete){
            for (contact eachContact : trigger.old) {
                if(eachContact.AccountId != null){
                    accountIds.add(eachContact.AccountId);
                }
            }
        }
        AccountTriggerHandler.updateAccountRollUpField(accountIds);
    }
}
    // if(trigger.isBefore){
    //     System.debug('BEFORE trigger');
    //     if(trigger.isInsert){
    //         System.debug('Before insert trigger');
    //     }
    //     if(trigger.isUpdate){
    //         System.debug('Before update trigger');
    //     }



    //     if(trigger.isAfter)
    //     System.debug('AFTER Trigger');
    //         if(trigger.isInsert){
    //             System.debug('After insert trigger');
    //         }
    //         if(trigger.isUpdate){
    //             System.debug('After update trigger');
    //         }
    // }
