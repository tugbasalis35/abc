trigger OpportunityTrigger on Opportunity (before insert, after insert, before update, after update, before delete, after delete, after undelete) {
//   //soru : Bir opportunity nin Amount update edildiğinde bağlı olduğu accountun tüm opportunities nin Amount toplamları Accountta oluşturulan Total Amount fieldinde görünsün.. 
//   set<id> accIds = new set<id>();
//   if (trigger.isAfter) {
//       if (trigger.isInsert || trigger.isUndelete) {
//           for (opportunity op : trigger.new) {
//               if (op.amount != null) {
//                   accIds.add(op.AccountId);
//               }
//           }
//       }
//       if (trigger.isUpdate) {
//           for (opportunity op : trigger.new) {
//               if (op.amount != trigger.oldMap.get(op.id).amount) {
//                   accIds.add(op.AccountId);
//               }
//               if (op.accountId != trigger.oldMap.get(op.id).accountId) {
//                   accIds.add(op.accountId);
//                   accIds.add(trigger.oldMap.get(op.id).accountId);
//               }
//           }
//       }
      
//       // if (trigger.isUndelete) {
//       //     for (opportunity op : trigger.new) {
//       //         if (op.amount != null) {
//       //             accIds.add(op.AccountId);
//       //         }
//       //     }
//       // }
//   }

//       // if ( trigger.isBefore && trigger.isDelete) {
//       //     for (opportunity op : trigger.old) {
//       //         if (op.amount != null) {
//       //             accIds.add(op.accountId);
//       //         }
//       //     }
//       // }

//     //   if (!accIds.isEmpty()) {
//     //       List<Account> accList = [select id, name, Total_Amount__c, (select id, name, amount from Opportunities) from Account where id in : accIds];
//     //       for (Account acc : accList) {
//     //           Decimal total = 0;
//     //           for (opportunity op : acc.Opportunities) {
//     //               total += op.Amount;
    //           }
    //           acc.Total_Amount__c = total;
    //       }
    //       update accList;
    //   }



  
//   if(trigger.isBefore &&trigger.isUpdate){
//     for (opportunity op : trigger.new) {
//         if(op.StageName != trigger.oldMap.get(op.Id).StageName){
//             if(op.StageName == 'closed lost'){
//                 op.Description = 'we are so soryy..';
//             }
//             if(op.StageName == 'closed won'){
//                 op.Description = 'yaaayyyy'; 
//             }
//             if(op.StageName == 'Prospecting'){   
//             op.addError('you cant go back'); 
        
//     }
//   }
     
//     } 
// }
 }
// soru: Bir opportunitynin stage Name i update edildiğinde closed lost olarak değiştirildiğinde Description da 'çok üzgünüz' mesajını yazdırsın. closed won olarak değiştirildiğinde 'yaşasın' mesajı yazdırsın. Prospecting olarak değiştirilmek istendiğinde izin verme hata mesajı olarak 'süreci başa döndüremezsiniz..' mesajını ver.
     
