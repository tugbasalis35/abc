trigger AcoountTrigger on Account (before insert,before update ,after insert,after update ) {
     
    
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
    }

        



 //System.debug('=============Trigger start============');
    //if(trigger.isBefore)
   // System.debug('before insert trigger');
    //if(trigger.isAfter){   
   // System.debug('after inser tiregger');
    
   // System.debug('====================Trigger End===========');

//}