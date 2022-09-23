public class SalesforceProjectTriggerHandler {

   public static void spComletedStatus(List<Salesforce_Project__c> spTriggerNew,
                                        List<Salesforce_Project__c> spTriggerOld,
                                        Map<id, Salesforce_Project__c> spTriggerNewMap,
                                         Map<Id,Salesforce_Project__c> spTriggerOldMap) {
            set<id> spIds = new set<id>();
            for (Salesforce_Project__c spRecord : spTriggerNew) {
                Salesforce_Project__c spOld = spTriggerOldMap.get(spRecord.Id);
                if (spRecord.Status__c == 'Completed' && spOld.Status__c !='Completed') {
                    spIds.add(spRecord.Id);
                }
            }
            if (!spIds.isEmpty()) {
                updateTicketStatusCompleted(spIds);
            }
    
   }
   @future
    public static void updateTicketStatusCompleted(set<id> spIds) {
        List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c
                                            from Salesforce_Ticket__c WHERE
                                            Salesforce_Project__c in :spIds and status__c != 'Completed'];
        for (salesforce_ticket__c sRecord : listST) {
            sRecord.Status__c = 'Completed';
        }
        update listST;
    }




    
    @future
    public static void updateProjectDescription(set<id> setSPIds) {
        List<Salesforce_Project__c> listSP = [select id, name, description__c from Salesforce_Project__c where id in :setSPIds];

        for (salesforce_project__c eachSP : listSP) {
            eachSP.Description__c = eachSP.Description__c + '. Updated from future';
        }
        update listSP;
    }
   public static void createDefoultSalesforceTicket(List<Salesforce_Project__c> spTriggerNew) {
    
    List<Salesforce_Ticket__c> newSTList = new List<Salesforce_Ticket__c>();
    DefaultTicketInfo__c ticketInfo = DefaultTicketInfo__c.getOrgDefaults();
    for (Salesforce_Project__c eachSP : spTriggerNew) {
        Salesforce_Ticket__c st = new Salesforce_Ticket__c();
        st.Subject__c = 'Default ST';
        st.Salesforce_Project__c = eachSP.Id;
        st.Priority__c = 'High';
        st.Description__c = ticketInfo.description__c;
        newSTList.add(st);
        
    }
    if(!newSTList.isEmpty()){
        insert newSTList;
    }
   }
   public static void validateProjectComletion(List<Salesforce_Project__c> spTriggerNew,
                                                Map<id, Salesforce_Project__c> spTriggerNewMap,
                                                Map<Id,Salesforce_Project__c> spTriggerOldMap) {
        system.debug('19' + 'Sfproject');
     set<id> setCompletedProjectIds = new set<id>();
     for (salesforce_project__c eachNewSP : spTriggerNew) {
                                                        //check if project's status field is marked as completed.
                                                        //how do we check that?
                                                         //compare old status value and new status value.
                                                         //if not same, then status field is CHANGED.
      salesforce_project__c oldSP = spTriggerOldMap.get(eachNewSP.id);
     if(oldSP.Status__c != eachNewSP.Status__c
      && eachNewSP.Status__c == 'Completed'){
     setCompletedProjectIds.add(eachNewSP.Id);
     }
    }
    List<Salesforce_Ticket__c> listST = [select id,name,status__c,Salesforce_Project__c from Salesforce_Ticket__c where Salesforce_Project__c in :setCompletedProjectIds and (status__c !='Completed' and status__c != 'Cancelled')];
    System.debug(listST);
    //loop all tickets and if ticketsis found then fetch project 
    for (Salesforce_Ticket__c eachST : listST) {
        Salesforce_Project__c spNew = spTriggerNewMap.get(eachST.salesforce_project__c);
        spNew.addError('Please completed the project');
    }

  } 
  
  
}


