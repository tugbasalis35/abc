trigger ContactTriggerTurkish on Contact (before insert,after insert, before update, after update,after delete, after undelete) {
  // Soru : Yeni bir Contact create edilip bir Accounta bağlandığında, Accounta bağlı bir Contact delete edildiğinde veya Bir Contact update edilerek bir Account ile bağlantısı kesilirse, bir Accounta bağlanırsa ya da bağlantı değişirse Accountta Number_of_Contacts__c fieldi güncellenecek..

  //etkilenen acc idlerini toplayacagim bir sistem olustur
  set<id> accIds = new Set<Id>();

    if (trigger.isAfter) {
        if (trigger.isInsert || trigger.isUndelete) {
            for (contact cn : trigger.new) {
                if (cn.accountId != null) {
                    accIds.add(cn.accountId);
                }
            }
        }

        if (trigger.isUpdate) {
            for (contact cn : trigger.new) {
                if (cn.accountId != trigger.oldmap.get(cn.id).accountId) {
                    accIds.add(cn.accountId);
                    accIds.add(trigger.oldmap.get(cn.id).accountId);
                }
            }
        }

        if (trigger.isDelete) {
            for (contact cn : trigger.old) {
                if (cn.AccountId != null) {
                    accIds.add(cn.AccountId);
                }
            }
        }

        if (!accIds.isEmpty()) {
            List<Account> accList = [ select id, name, 	Number_Of_Contacts__c, (select id from contacts) from Account where id in : accIds ];
            for (Account acc : accList) {
                acc.Number_Of_Contacts__c = acc.contacts.size();
            }
            update accList;
        }
    }
    

}





















//kullanicinin lead source Partner Referral olan contact i uptade yapmasina  izin verme eger
// if(trigger.isBefore && trigger.isUpdate){
//   for (contact con : trigger.new) {
//     if(trigger.oldMap.get(con.id).LeadSource == 'Partner Referral'){
//       con.addError('bu contacti degistiremezsin');
//       //burda hata mesajini genel goruruz
//     }
    
//   }


// //kullanicinin sadece lead source u update yapmasina izin verme
//   //if(trigger.isAfter && trigger.isUpdate){
//     for (contact cn : trigger.new) {
//       if(cn.LeadSource != trigger.oldMap.get(cn.Id).LeadSource){
//         cn.LeadSource.addError('Bu recordun leadsourceunu degistiremezsin');
//         //burda hata mesajini ilgili yerde goruruz
//       }
//     }
//   }
// }












    // if(trigger.isAfter){ 
    // System.debug('Contact Trigger tetiklendi');
    // System.debug('trigger New==> ' + trigger.new);
    // System.debug('islem yapilan record sayisi==> ' + trigger.new.size() );        
    //   for (contact c : trigger.new) {
    //       System.debug(c.LastName);
    //   }
    // }
