public with sharing class CaseInvocable {

    @InvocableMethod(label='Send Email & Save Activity'
    description='Sends an email and seve as activity'
    category='Case')

   public static void sendEmail(List<FlowInput> inputs){
    List<Messaging.SingleEmailMessage> Messages = new List<Messaging.SingleEmailMessage>();
    for(FlowInput input : inputs){
        Messaging.SingleEmailMessage message = new  Messaging.SingleEmailMessage();
        message.setSubject('Case Created: ' + input.caseNumber);
        message.setPlainTextBody('Hello there, \n'
        + 'A case has been created your query. You can quote the case number when you call the next time! \n\n'
        + 'Thanks, \n'
        + 'Salesforce');
        message.setTargetObjectId(input.contactId);
       
        message.setSaveAsActivity(true);
    }
    Messaging.sendEmail(messages);
   }
   public class flowInput{
    @InvocableVariable(label='Case Number'description='Case Number'required=true)
    public String caseNumber;

    @InvocableVariable(label='Contact Id'description='Contact Id'required=true)
    public Id contactId;
   }
}
