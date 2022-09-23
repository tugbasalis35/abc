trigger CaseTrigger on Case (before insert){  
    System.debug('before trigger insert case called');
    System.debug('trigger size is===>' + trigger.size);

}



//     if(trigger.isBefore){  
//   System.debug('before ' + trigger.isBefore);
//         if(trigger.isInsert){
//             System.debug('before insert trigger ' + trigger.isInsert);
//                 if(trigger.isUpdate){
//                     System.debug('before update trigger ' + trigger.isUpdate);
//                         if(trigger.isDelete){
//                             System.debug('before delete trigger ' + trigger.isDelete);
//                         }
//                 }
//         }
//     }


//     if(trigger.isAfter){
//         System.debug('isAfter ' + trigger.isAfter );
//         if(trigger.isInsert)
//         System.debug('After insert' + trigger.isInsert);
//         if(trigger.isUpdate)
//         System.debug('After update ' + trigger.isUpdate);
//         if(trigger.isDelete)
//         System.debug('after delete ' + trigger.isDelete);
//     }


