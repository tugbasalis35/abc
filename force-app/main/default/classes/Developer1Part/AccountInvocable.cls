public with sharing class AccountInvocable {
    @invocableMethod(label = 'Close Related Opportunities'
    description = 'Closes All teh Related Opportunities Of The Given Accounts'
    category = 'Account')
    public static void closeOpportunities(List<id> accountsId){
        //get all the related opportunities
        List<Opportunity> opps = [Select Id,StageName From Opportunity Where AccountId IN :accountsId
                                   and StageName not In ('Closed Won','Closed Lost')];
        //itarete over the records and populate stage name
        for (opportunity opp : opps) {
            opp.StageName = 'Closed Lost';

            
        }
        //hit updates
        try{
            update opps;
        }catch (Exception ex){
            System.debug(ex.getMessage());
        }
    }
}
