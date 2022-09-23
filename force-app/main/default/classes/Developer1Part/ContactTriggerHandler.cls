public  class ContactTriggerHandler {
    public static void contactUpdateValidation1(List<contact> conTriggerNew,
                                                List<contact> conTriggerOld,
                                                Map<id, contact> conTriggerNewMap,
                                                Map<id, contact> conTriggerOldMap) {
                                                    

     
    for (contact eachContact : conTriggerNew) {
    contact oldContact = conTriggerOldMap.get(eachContact.id);
    //oldContact---->older value of leadsource. 
    if(oldContact.Leadsource == 'Partner Referral'){
        eachContact.addError('Cannot Update Partner Referral contact');
    }
    
}
                                                }

public static void contactUpdateValidation2(List<contact> conTriggerNew,
                                        List<contact> conTriggerOld,
                                        Map<id, contact> conTriggerNewMap,
                                        Map<id, contact> conTriggerOldMap) {


    for (contact eachContact : conTriggerNew) {
        Contact oldContact =  conTriggerOldMap.get(eachContact.Id);
        if(eachContact.LeadSource != oldContact.LeadSource){
            string customErrorMsg = system.Label.ContactValidation2;
            eachContact.LeadSource.addError(customErrorMsg);
        }

        
        }
    }
}

