public class soqlDemo2 {
    public static void childToParent_soql() {
        List<contact>listcnt = [select id, name, account.name, account.industry from contact where account.industry = 'energy'];
    
        for (contact eachContact   : listcnt) {
            string accName = eachContact.Account.Name;
            System.debug('contact name is ' + eachContact.Name + ', its acc is ' + accName);
        }
        
    }
    public static void sampleSoql4() {

        List<Account> accountWithOpps = [select name,AnnualRevenue,(select amount,name 
        from Opportunities where stageName = 'Closed Won') from account where type = 'Customer - Direct'];
            if (!accountWithOpps.isEmpty()) {
                for (account  eachAccount : accountWithOpps) {
                    System.debug('account name' + eachAccount.name + 'and its revenu is' + eachAccount.AnnualRevenue);
                    List<Opportunity>listOpp = eachAccount.Opportunities;
                    for (opportunity eachOpp : listOpp) {
                        System.debug('Opp name ; '+ eachOpp.name + ', amount is '+ eachOpp.amount);
                    }
                    System.debug('---------------------');
                }
            } else {
                System.debug('its empty');
            }
       
    }
}
